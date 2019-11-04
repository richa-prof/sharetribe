class AddPricePerToTransactionTypes < ActiveRecord::Migration[4.2]
  def change
    add_column :transaction_types, :price_per, :string, :after => :price_quantity_placeholder
  end
end
