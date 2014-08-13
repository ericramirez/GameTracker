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
		
		assert game1.save, "Valid game Data could not be saved"

		game1.end_time = incorrect_end_time

		assert_not game1.save, "Could save a game that finished before it started"

		
	end
end
