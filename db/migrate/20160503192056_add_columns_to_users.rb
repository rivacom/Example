class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :tname, :string
    add_column :users, :avatar, :string
    add_column :users, :role_id, :integer
    add_column :users, :game_id, :integer
    add_column :users, :team_id, :integer
  end
end
