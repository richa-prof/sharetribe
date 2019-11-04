class RemoveQuantityIfUnitTypeAvailable < ActiveRecord::Migration[4.2]
  def up
    execute("
      UPDATE listings
      LEFT JOIN listing_units ON (listings.transaction_type_id = listing_units.transaction_type_id)
      SET listings.quantity = NULL
      WHERE listing_units.unit_type = 'day'")
  end

  def down
    #noop
  end
end
