class AddListingShapeIndexes < ActiveRecord::Migration[4.2]
  def change
    add_index :listing_shapes, [:community_id, :deleted, :sort_priority], name: 'multicol_index'
  end
end
