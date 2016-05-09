class AddTwitchnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tname, :string
  end
end
