class Game < ActiveRecord::Base
	validates :scheduled_start_time, presence: true
	validates :start_time, presence: false
	validates :end_time, presence: false
  	validates :team1, presence: true
	validates :team2, presence: true

	belongs_to :team1, foreign_key: 'team_id', class_name: 'Team'
	belongs_to :team2, foreign_key: 'team_id', class_name: 'Team'

	def plays
		#Falta la implementacion
	end

	def save
		if end_time && start_time
			return false if end_time < start_time
		end
		
		super
	end
end
