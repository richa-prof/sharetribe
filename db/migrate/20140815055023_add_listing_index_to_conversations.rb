class AddListingIndexToConversations < ActiveRecord::Migration[4.2]
  def change
    add_index :conversations, :listing_id
  end
end
