class ChangeTosTypeToMediumText < ActiveRecord::Migration[4.2]
  def up
    # MySQL MEDIUMTEXT limit is 16.megabytes - 1 = 16777215
    # http://stackoverflow.com/questions/4443477/rails-3-migration-with-longtext
    change_column :community_customizations, :terms_page_content, :text, :limit => 16777215
  end

  def down
    change_column :community_customizations, :terms_page_content, :text, :limit => 65535
  end
end