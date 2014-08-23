class Game < ActiveRecord::Base
    belongs_to :away_team, class_name: 'Team', inverse_of: :away_games
	belongs_to :home_team, class_name: 'Team', inverse_of: :home_games

	validates :away_team, :home_team, presence: true, inclusion: { in: Team.all }
	validate  :we_can_play?
	validates :scheduled_start_time, presence: true
    
    def we_can_play?
     	if away_team_id == home_team_id
       	    errors.add(:home_team_id, "must be different from the away team")
        end
        true
    end
end