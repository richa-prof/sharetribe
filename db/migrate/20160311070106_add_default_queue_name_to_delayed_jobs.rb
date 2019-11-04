class AddDefaultQueueNameToDelayedJobs < ActiveRecord::Migration[4.2]
  def up
    execute("UPDATE delayed_jobs SET queue = 'default'")
  end

  def down
    execute("UPDATE delayed_jobs SET queue = NULL")
  end
end
