class AddVerificationToPostListingsInfoContentToCommunityCustomizations < ActiveRecord::Migration[4.2]
  def change
    add_column :community_customizations, :verification_to_post_listings_info_content, :text
  end
end
