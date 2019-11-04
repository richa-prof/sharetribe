class AddIndexUniqueCommunityIdAndEmailAddress < ActiveRecord::Migration[4.2]
  def change
    add_index :emails, [:address, :community_id], unique: true
  end
end
