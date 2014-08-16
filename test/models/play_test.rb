require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "Datos validos" do

    play = Play.new

    assert_not play.save, "Se pudo grabar un juego sin los datos requeridos"

    game = Game.new
    game.scheduled_start_time = DateTime.new 2014, 8, 18, 12, 0, 0

    team = Team.new name: "FCB"
    team2 = Team.new name: "AnotherTeam"

    game.team = team
    game.team2 = team2

    game.save


    play.game = game

    assert play.save, "No se pudo grabar un jeugo con los datos requeridos"


    
  end
end
