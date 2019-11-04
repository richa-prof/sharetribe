class CreateOrganizations < ActiveRecord::Migration[4.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :company_id
      t.string :merchant_id
      t.string :merchant_key
      t.string :allowed_emails
      
      t.timestamps
    end
  end
end
