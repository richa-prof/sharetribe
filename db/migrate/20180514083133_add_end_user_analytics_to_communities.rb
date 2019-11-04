class AddEndUserAnalyticsToCommunities < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :communities, :end_user_analytics, :boolean, :default => true
  end
end
