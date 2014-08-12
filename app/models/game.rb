class Game < ActiveRecord::Base

	validates :scheduled_start_time, presence: true

	def save
		if super
			if self.end_time < self.start_time
				return false
			end
		end
	end


end
