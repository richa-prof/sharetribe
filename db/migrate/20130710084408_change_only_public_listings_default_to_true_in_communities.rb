class ChangeOnlyPublicListingsDefaultToTrueInCommunities < ActiveRecord::Migration[4.2]
  def self.up
    change_column_default(:communities, :only_public_listings, true)
  end

  def self.down
    change_column_default(:communities, :only_public_listings, false)
  end
end
