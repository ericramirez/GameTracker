class Game < ActiveRecord::Base

	validates :scheduled_start_time, presence: true
  validates :team, presence: true
  validates :team2, presence: true

  belongs_to :team, foreign_key: 'team_id', class_name: 'Team'
  belongs_to :team2, foreign_key: 'team2_id', class_name: 'Team'


	def save
    if self.end_time != nil and self.start_time != nil
			if self.end_time < self.start_time
				return false
			end
    end

    super
	end


end
