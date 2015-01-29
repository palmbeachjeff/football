class CreateCoachAndGame < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
    	  t.text :name
	      t.integer :team_id
	end
	   

    create_table :games do |t|
    	t.datetime :date
	    t.integer :home_team_id
	    t.integer :away_team_id
	    t.integer :home_score
	    t.integer :away_score
	
    
    
	end
  end
end
