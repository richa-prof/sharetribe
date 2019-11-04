class RemoveSsnFromBraintreeAccounts < ActiveRecord::Migration[4.2]
  def up
    remove_column :braintree_accounts, :ssn
  end

  def down
    add_column :braintree_accounts, :ssn, :string
  end
end
