class Player < ActiveRecord::Base
    @@positions = ['ARQ', 'DEF', 'MED', 'DEL']
    
    belongs_to :team, inverse_of: :players
    
    validates :number, presence: true, inclusion: { in: 1..99 }
    validates :position, presence: true, inclusion: { in: @@positions }
    validates :name, presence: true
    validates :team, presence: true, inclusion: { in: Team.all }
    
    def name=(value)
		self[:name] = value.strip.upcase
    end
    
    def position=(value)
        self[:position] = value.strip.upcase
    end
end