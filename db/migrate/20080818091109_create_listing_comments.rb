class CreateListingComments < ActiveRecord::Migration[4.2]
  def self.up
    create_table :listing_comments do |t|
      t.string :author_id
      t.integer :listing_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :listing_comments
  end
end
