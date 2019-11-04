class RemoveConversationAcceptedJobDescriptions < ActiveRecord::Migration[4.2]
  def up
    execute("DELETE FROM `delayed_jobs` WHERE `handler` LIKE '%ruby/struct:ConversationAcceptedJob%'")
  end

  def down
  end
end
