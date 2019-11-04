class AddGatewayCommissionToPaymentGateway < ActiveRecord::Migration[4.2]
  def change
    add_column :payment_gateways, :gateway_commission_percentage, :int
    add_money :payment_gateways, :gateway_commission_fixed, amount: { null: true, default: nil }
  end
end
