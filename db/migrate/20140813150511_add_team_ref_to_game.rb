class AddTeamRefToGame < ActiveRecord::Migration
  def change
    add_reference :games, :team, index:true
  end
end
