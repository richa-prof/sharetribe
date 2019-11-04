class AddMenuLinkTranslation < ActiveRecord::Migration[4.2]
  def up
    create_table :menu_link_translations do |t|
      t.integer :menu_link_id
      t.string :locale
      t.string :url
      t.string :title

      t.timestamps
    end
  end

  def down
    drop_table :menu_link_translations
  end
end
