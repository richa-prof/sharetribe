class AddCountryToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :country, :string, :after => :category
  end
end
