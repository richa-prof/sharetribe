class RemoveOldListingsIndex < ActiveRecord::Migration[4.2]
  def change
    remove_index :listings, name: 'homepage_query_valid_until', column: ["community_id", "open", "valid_until", "sort_date", "deleted"]
  end
end
