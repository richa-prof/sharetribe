class AddIndexToMenuLinksId < ActiveRecord::Migration[4.2]
  def change
    add_index :menu_link_translations, :menu_link_id
  end
end
