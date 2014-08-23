class AddGameRefToPlay < ActiveRecord::Migration
  def change

  	add_column :plays, :game_id, :integer
  	add_index :plays, :game_id 
  end
end
