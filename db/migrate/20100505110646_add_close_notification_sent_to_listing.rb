class AddCloseNotificationSentToListing < ActiveRecord::Migration[4.2]
  def self.up
    add_column :listings, :close_notification_sent, :boolean, :default => 0
  end

  def self.down
    remove_column :listings, :close_notification_sent
  end
end
