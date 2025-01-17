# == Schema Information
#
# Table name: custom_field_options
#
#  id              :integer          not null, primary key
#  custom_field_id :integer
#  sort_priority   :integer
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_custom_field_options_on_custom_field_id  (custom_field_id)
#

class CustomFieldOption < ApplicationRecord
  include SortableByPriority # use `sort_priority()` for sorting

  belongs_to :custom_field
  has_many :titles, :foreign_key => "custom_field_option_id", :class_name => "CustomFieldOptionTitle", :dependent => :destroy # rubocop:disable Rails/InverseOf

  has_many :custom_field_option_selections, :dependent => :destroy
  has_many :custom_field_values, :through => :custom_field_option_selections

  validates_length_of :titles, :minimum => 1

  def title(locale="en")
    TranslationCache.new(self, :titles).translate(locale, :value)
  end

  def title_attributes=(attributes)
    attributes.each do |locale, value|
      if title = titles.find_by_locale(locale)
        title.update_attribute(:value, value)
      else
        titles.build(:value => value, :locale => locale)
      end
    end
    self.updated_at = Time.zone.now # to change TranslationCache key
  end
end
