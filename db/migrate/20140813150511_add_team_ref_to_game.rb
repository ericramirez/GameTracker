class AddTeamRefToGame < ActiveRecord::Migration
  def change
    add_reference :games, :team1, index:true
  end
end
