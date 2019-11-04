class AddShowListingPublishingDateToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :show_listing_publishing_date, :boolean, :default => false
  end
end
