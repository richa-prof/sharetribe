class AddAssignmentToCustomFields < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :custom_fields, :assignment, :integer, default: 0
  end
end
