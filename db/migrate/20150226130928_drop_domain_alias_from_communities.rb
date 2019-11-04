class DropDomainAliasFromCommunities < ActiveRecord::Migration[4.2]
  def up
    remove_column :communities, :domain_alias
  end

  def down
    add_column :communities, :domain_alias, :string, after: :use_community_location_as_default
  end
end
