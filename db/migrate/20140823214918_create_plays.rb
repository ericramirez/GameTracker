class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string   :description
      t.integer  :player_id
      t.string   :score
      t.datetime :time

      t.timestamps
    end
  end
end
