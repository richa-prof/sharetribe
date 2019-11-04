class AddCommunityIdToLocations < ActiveRecord::Migration[4.2]
  def self.up
    add_column :locations, :community_id, :integer
  end

  def self.down
    remove_column :locations, :community_id
  end
end
