class AddVatInUseToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :vat, :integer
  end
end
