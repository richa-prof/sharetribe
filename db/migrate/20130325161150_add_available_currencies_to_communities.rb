class AddAvailableCurrenciesToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :available_currencies, :text
  end
end
