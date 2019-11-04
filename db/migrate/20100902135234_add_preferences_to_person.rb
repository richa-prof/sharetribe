class AddPreferencesToPerson < ActiveRecord::Migration[4.2]
  def self.up
    add_column :people, :preferences, :string
  end

  def self.down
    remove_column :people, :preferences
  end
end
