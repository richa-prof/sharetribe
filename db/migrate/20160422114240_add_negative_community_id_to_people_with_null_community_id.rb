class AddNegativeCommunityIdToPeopleWithNullCommunityId < ActiveRecord::Migration[4.2]
  def up
    exec_update(
      "UPDATE people SET community_id = -1 WHERE community_id IS NULL",
      "Set community_id -1",
      [])
  end

  def down
    exec_update(
      "UPDATE people SET community_id = NULL WHERE community_id = -1",
      "Set community_id NULL",
      [])
  end
end
