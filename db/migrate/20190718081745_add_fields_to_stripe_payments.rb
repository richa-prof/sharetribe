class AddFieldsToStripePayments < ActiveRecord::Migration[4.2]
  def change
    add_column :stripe_payments, :stripe_payment_intent_id, :string
    add_column :stripe_payments, :stripe_payment_intent_status, :string
    add_column :stripe_payments, :stripe_payment_intent_client_secret, :string
  end
end
