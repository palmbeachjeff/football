class Team < ActiveRecord::Base
	belongs_to :city
	has_one :coach  
	#validates :name, uniqueness: true
	has_many :home_games, class_name: "Game", foreign_key: "home_team_id"
	has_many :away_games, class_name: "Game", foreign_key: "away_team_id"
    #need Team_id in Game Table
    #validates :conference, :division, :name, :presence, :true

    def division_rivals
    	Team.where(conference: conference,
    			   division: division).where.not(id:id)
    end
end



