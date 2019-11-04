class AddShowDateInListingsListsToCommunities < ActiveRecord::Migration[4.2]
  def self.up
    add_column :communities, :show_date_in_listings_list, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :show_date_in_listings_list
  end
end
