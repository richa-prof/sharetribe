class ChangeDataTypeForCommunityId < ActiveRecord::Migration[4.2]
  def up
    change_column :community_plans, :community_id,  :integer
  end

  def down
    change_column :community_plans, :community_id,  :string
  end
end
