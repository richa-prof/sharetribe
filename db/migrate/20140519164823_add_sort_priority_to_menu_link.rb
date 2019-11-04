class AddSortPriorityToMenuLink < ActiveRecord::Migration[4.2]
  def change
    add_column :menu_links, :sort_priority, :int, default: 0
  end
end
