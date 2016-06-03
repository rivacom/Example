class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      
      t.string :gamename
      t.string :system

      t.timestamps null: false
    end
  end
end
