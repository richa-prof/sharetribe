class AddPositionToListingImages < ActiveRecord::Migration[4.2]
  def change
    add_column :listing_images, :position, :integer, default: 0
  end
end
