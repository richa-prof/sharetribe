class AddTransactionProcessIdToTransactionType < ActiveRecord::Migration[4.2]
  def up
    add_column :transaction_types, :transaction_process_id, :int, after: :community_id
  end

  def down
    remove_column :transaction_types, :transaction_process_id
  end
end
