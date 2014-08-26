class GamesController < ApplicationController
	def index
        @games = Game.all
	end

  def show
    @game = Game.find_by id: params[:id]

    respond_to do |format|
      format.html
      format.json { render :json => @game.plays.as_json }
    end
  end
end
