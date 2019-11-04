class AddMembersCountToCommunities < ActiveRecord::Migration[4.2]
  def self.up
    add_column :communities, :members_count, :integer, :default => 0
    Community.reset_column_information
    Community.all.each do |c|
      Community.reset_counters c.id, :community_memberships
    end
  end

  def self.down
    remove_column :communities, :members_count
  end
end
