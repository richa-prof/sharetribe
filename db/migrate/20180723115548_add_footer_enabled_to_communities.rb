class AddFooterEnabledToCommunities < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :communities, :footer_enabled, :boolean, default: false
  end
end
