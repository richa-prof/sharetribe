class AddCustomEmailFromAddressToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :custom_email_from_address, :string
  end
end
