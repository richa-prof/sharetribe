class AddFacebookIdToPeople < ActiveRecord::Migration[4.2]
  def self.up
    add_column :people, :facebook_id, :string
    
    add_index :people, :facebook_id, :unique => true
  end

  def self.down
    remove_index :people, :facebook_id
    
    remove_column :people, :facebook_id
  end
end
