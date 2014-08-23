require 'test_helper'

class GameTest < ActiveSupport::TestCase
	test "valid game data" do
		scheduled_start_time = DateTime.new(2014, 8, 12, 13, 0, 0)
		start_time = DateTime.new(2014, 8, 12, 13, 0, 0)
		end_time = DateTime.new(2014, 8, 12, 14, 47, 0)
		incorrect_end_time = DateTime.new(2014, 8, 11, 14, 47, 0)

		game = Game.new
		assert_not game.save , "Created a game without a scheduled start time"
		game.scheduled_start_time = scheduled_start_time

		game.team1 = Team.new name: "Name1"
		game.team2 = Team.new name: "Name2" 
		assert game.save, "Valid game Data could not be saved"

		game.start_time = start_time
		game.end_time = incorrect_end_time
		assert_not game.save, "Could save a game that finished before it started"
		
		plays = game.plays

		# Asegura que el metodo plays devuelva un resultado de un query
		assert plays.class == Play::ActiveRecord_Relation, "El resultado de game.plays devuelve un arreglo que no es de jugadas"
	end

	test "has 2 teams" do
		game = Game.new
		game.scheduled_start_time = DateTime.new

		game.team1 = Team.new name: "NY Yankess"
		assert_not game.save, "Could save a game without 2 teams (2)"

		game.team2 = Team.new name: "Red Sox"
		assert game.save, "Couldn't save game with valid teams"
	end
end
