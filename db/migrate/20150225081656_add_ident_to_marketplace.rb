class AddIdentToMarketplace < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :ident, :string, after: :id
    add_index :communities, :ident
  end
end
