class AddSeachFilterIndex < ActiveRecord::Migration[4.2]
  def change
    add_index :custom_fields, :search_filter
  end
end
