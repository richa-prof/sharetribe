class AddDescriptionToNotifications < ActiveRecord::Migration[4.2]
  def self.up
    add_column :notifications, :description, :string
  end

  def self.down
    remove_column :notifications, :description
  end
end
