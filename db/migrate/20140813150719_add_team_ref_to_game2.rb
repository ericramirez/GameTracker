class AddTeamRefToGame2 < ActiveRecord::Migration
  def change
    add_reference :games, :team2, index:true
  end
end
