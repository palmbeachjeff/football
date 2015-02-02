class Game < ActiveRecord::Base
	belongs_to :home_team, class_name:  "Team"
	belongs_to :away_team, class_name:  "Team"
	after_create :update_coach_win_loss


	def final_score
		if home_score
		"#{home_score} - #{away_score}"
	else
		nil
		end
	end

	def update_coach_win_loss
		#coach of the winning team have one more win
		#coach of the losing team have one more loss
		winning_coach.update_attribute :wins, winning_coach.wins + 1 
		losingo_coach.update_attribute :losses, losing_coach.losses + 1 
	end
	def winning_coach
		winning_team.coach 
	end

	def losing_coach
		if home_team == winning_team
			away_team.coach
		else
			home_team.coach
		end
	end

	def winning_team
		if home_score > away_score
			home_team 
		else
			away_team  
		end
	end

end

