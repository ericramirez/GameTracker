class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :number
      t.string  :position
      t.string  :name
      t.integer :team_id

      t.timestamps
    end
  end
end
