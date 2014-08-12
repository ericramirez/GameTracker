class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :scheduled_start_time
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
