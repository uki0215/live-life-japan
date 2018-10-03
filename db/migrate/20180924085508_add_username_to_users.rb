class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #add new column to table "users" called "username" of type "string"
    add_index :users, :username, unique: true 
  end
end
