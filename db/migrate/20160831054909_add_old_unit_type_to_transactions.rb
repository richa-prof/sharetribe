class AddOldUnitTypeToTransactions < ActiveRecord::Migration[4.2]
  def change
    add_column :transactions, :old_unit_type, :string, limit: 32, after: :unit_type
  end
end
