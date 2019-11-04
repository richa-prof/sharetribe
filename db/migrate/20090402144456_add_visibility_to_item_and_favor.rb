class AddVisibilityToItemAndFavor < ActiveRecord::Migration[4.2]
  def self.up
    add_column :items, :visibility, :string, :default => "everybody"
    add_column :favors, :visibility, :string, :default => "everybody"
  end

  def self.down
    remove_column :items, :visibility
    remove_column :favors, :visibility
  end
end
