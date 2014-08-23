class Team < ActiveRecord::Base
    has_many :away_games, class_name: "Game", foreign_key: :away_team_id, inverse_of: :away_team
	has_many :home_games, class_name: "Game", foreign_key: :home_team_id, inverse_of: :home_team
	has_many :players, inverse_of: :team

	validates :name, presence: true, uniqueness: { case_sensitive: false }

	def name=(value)
		self[:name] = value.strip.upcase
	end
end
