class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      
      t.string :teamname
      t.string :teamlogo
      t.string :teamwebsite

      t.timestamps null: false
    end
  end
end
