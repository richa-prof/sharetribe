class CreatePaymentRows < ActiveRecord::Migration[4.2]
  def change
    create_table :payment_rows do |t|
      t.integer :payment_id
      t.integer :vat
      t.money :sum

      t.timestamps
    end
  end
end
