class AddTypeToConversation < ActiveRecord::Migration[4.2]
  def change
    add_column :conversations, :type, :string, :default => 'Conversation', :after => :id
  end
end
