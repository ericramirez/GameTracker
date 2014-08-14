require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "Valid Game Data" do
		
		scheduled_start_time = DateTime.new(2014, 8, 12, 13, 0, 0)
		start_time1 = DateTime.new(2014, 8, 12, 13, 0, 0)
		end_time = DateTime.new(2014, 8, 12, 14, 47, 0)
		incorrect_end_time = DateTime.new(2014, 8, 11, 14, 47, 0)

		game1 = Game.new
		
		assert_not game1.save , "Created a game without a scheduled start time"

		game1.scheduled_start_time = scheduled_start_time

    game1.team = Team.new name: "Name1"
    game1.team2 = Team.new name: "Name2" 
		
		assert game1.save, "Valid game Data could not be saved"

    game1.start_time = start_time1
		game1.end_time = incorrect_end_time

		assert_not game1.save, "Could save a game that finished before it started"

		
	end

  test "has 2 teams" do
    game = Game.new ( )

    game.scheduled_start_time = DateTime.new 2014, 8, 12, 13, 0, 0

#    assert_not game.save, "Could save a game without 2 teams"

    team1 = Team.new name: "NY Yankess"
    game.team = team1
    assert_not game.save, "Could save a game without 2 teams (2)"

    game.team2 = Team.new name: "Red Sox"

    assert game.save, "Couldn't save game with valid teams"


    

    
  end

end
