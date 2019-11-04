class AddCheckoutKeysToPaymentGateways < ActiveRecord::Migration[4.2]
  def change
    add_column :payment_gateways, :checkout_user_id, :string, :after => :braintree_client_side_encryption_key
    add_column :payment_gateways, :checkout_password, :string, :after => :checkout_user_id
    add_column :payment_gateways, :checkout_environment, :string, :after => :braintree_client_side_encryption_key
  end
end
