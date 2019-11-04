class ChangeSymbolsToStringsInPreferences < ActiveRecord::Migration[4.2]
  def self.up
    Person.all.each do |person|
      person.preferences.each do |key, value|
        if key.is_a?(Symbol)
          person.preferences.delete(key)
          person.preferences[key.to_s] = value
        end
      end
      person.save
    end
  end

  def self.down
  end
end
