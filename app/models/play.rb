class Play < ActiveRecord::Base
	@@score = ['HOME', 'AWAY', 'NULL']

	belongs_to :game
	belongs_to :player


	validates :player, presence: true, inclusion: {in: Player.all}
	validates :score, presence: true, inclusion: {in: @@score}
	validates :time, presence: true
	validates :game, presence: true, inclusion: { in: Game.all }

end