class AddIsStarterToParticipations < ActiveRecord::Migration[4.2]

  def change
    add_column :participations, :is_starter, :boolean, default: false, after: :is_read
  end
end
