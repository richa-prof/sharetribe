class AddCosCookieToPerson < ActiveRecord::Migration[4.2]
  def self.up
      add_column :people, :cos_cookie, :string
  end

  def self.down
      remove_column :people, :cos_cookie
  end
end
