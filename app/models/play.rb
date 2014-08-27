class Play < ActiveRecord::Base
	@@score = ['HOME', 'AWAY', 'NULL']

	belongs_to :game
	belongs_to :player


	validates :player, presence: true, inclusion: {in: Player.all}
	validates :score, presence: true, inclusion: {in: @@score}
	validates :time, presence: true
	validates :game, presence: true, inclusion: { in: Game.all }
	

	def as_json
		{ id: id, game: game, player: player, score: score, time: time, description: description }
	end

	def plays
		Play.all.map { |x| x.as_json }
	end
end
