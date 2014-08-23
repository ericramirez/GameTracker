class Play < ActiveRecord::Base
	@@score = ['HOME', 'AWAY', 'NULL']

	validates :player, presence: true, inclusion: {in: Player.all}
	validates :score, presence: true, inclusion: {in: @@score}
	validates :time, presence: true

end