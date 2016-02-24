# Die User Tabelle um ein Benutzername ergaenzt
class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
