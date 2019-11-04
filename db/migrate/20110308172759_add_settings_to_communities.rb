class AddSettingsToCommunities < ActiveRecord::Migration[4.2]
  def self.up
    add_column :communities, :settings, :text
  end

  def self.down
    remove_column :communities, :settings
  end
end
