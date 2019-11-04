class AddEmailWhenNewFriendRequestToSettings < ActiveRecord::Migration[4.2]
  def self.up
    add_column :settings, :email_when_new_friend_request, :integer, :default => 1
  end

  def self.down
    remove_column :settings, :email_when_new_friend_request
  end
end
