class AddSignupInfoContentToCommunityCustomizations < ActiveRecord::Migration[4.2]
  def change
    add_column :community_customizations, :signup_info_content, :text
  end
end
