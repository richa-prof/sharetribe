class ChangePriceCurrencyToCurrency < ActiveRecord::Migration[4.2]
  def up
    rename_column :listings, :price_currency, :currency
  end

  def down
    rename_column :listings, :currency, :price_currency
  end
end
