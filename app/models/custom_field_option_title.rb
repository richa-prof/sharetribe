# == Schema Information
#
# Table name: custom_field_option_titles
#
#  id                     :integer          not null, primary key
#  value                  :string(255)
#  locale                 :string(255)
#  custom_field_option_id :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_custom_field_option_titles_on_custom_field_option_id  (custom_field_option_id)
#  locale_index                                                (custom_field_option_id,locale)
#

class CustomFieldOptionTitle < ApplicationRecord
  validates :value, :locale, presence: true

  belongs_to :custom_field_option, touch: true

end
