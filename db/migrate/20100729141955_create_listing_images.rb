class CreateListingImages < ActiveRecord::Migration[4.2]
  def self.up
    create_table :listing_images do |t|
      t.integer :listing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :listing_images
  end
end
