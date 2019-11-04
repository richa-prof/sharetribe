class AddTransactionProcessIdToListings < ActiveRecord::Migration[4.2]
  def change
    add_column :listings, :transaction_process_id, :integer, after: :transaction_type_id
  end
end
