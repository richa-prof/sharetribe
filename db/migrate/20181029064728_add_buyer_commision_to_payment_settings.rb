class AddBuyerCommisionToPaymentSettings < ActiveRecord::Migration[4.2]
  def change
    add_column :payment_settings, :commission_from_buyer, :integer
    add_column :payment_settings, :minimum_buyer_transaction_fee_cents, :integer
    add_column :payment_settings, :minimum_buyer_transaction_fee_currency, :string, limit: 3
  end
end
