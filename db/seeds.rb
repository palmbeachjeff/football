=begin

class AddGameData < ActiveRecord::Migration
require 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

256.times do |i|
	Game.create(date: "Game ##{i}", home_team_id: "Game ##{i}", away_team_id: "Game ##{i}", 
				home_score: "Game ##{i}", away_score: "Game ##{i}")
	end


	def down
	Game.delete_all
	end
=end

	
