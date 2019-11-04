# == Schema Information
#
# Table name: category_custom_fields
#
#  id              :integer          not null, primary key
#  category_id     :integer
#  custom_field_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_category_custom_fields_on_category_id_and_custom_field_id  (category_id,custom_field_id)
#  index_category_custom_fields_on_custom_field_id                  (custom_field_id)
#

require 'spec_helper'

describe CategoryCustomField, type: :model do

end
