class AddUrlToCategories < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :url, :string, :nil => false
    add_index :categories, :url, :unique => false
  end
end