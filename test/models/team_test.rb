require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "required team fields" do

    team1 = Team.new

    assert_not team1.save, "Could save a team without a name"

    team1.name = "NY Yankess"

    assert team1.save , "Couldn't save a team with all required fields"
    

  end
end
