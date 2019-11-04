class AddPublicToCustomFields < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :custom_fields, :public, :boolean, default: false
  end
end
