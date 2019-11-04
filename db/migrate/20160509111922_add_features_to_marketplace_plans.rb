class AddFeaturesToMarketplacePlans < ActiveRecord::Migration[4.2]
  def change
    add_column :marketplace_plans, :features, :text, after: :plan_level
  end
end
