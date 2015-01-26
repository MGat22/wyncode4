class Survivor
	attr_accessor :contestants, :teams
	
	def initialize
		@contestants = []
		@teams = []
	end

	# return the losing team
	def challenge
		losing_team = @teams.sample
		p "Losing team", losing_team
		losing_team
	end

	def vote(losing_team)
		loser = losing_team.vote
		p "Loser:", loser
		losing_team.kickoff(loser)
		kickoff(loser)
	end

	def kickoff(contestant)
		@contestants.delete(contestant)

		if @contestants.size <= 1
			puts "Congratulations #{@contestants.last.name}"
		elsif @contestants.size <= 5
			@teams = []

			team = Tribe.new("Purple")
			team.contestants = @contestants
			@teams << team
		end

	end
end

class Contestant
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def inspect
		"Contestant: #{@name}"
	end
end

class Tribe
	attr_accessor :contestants, :name

	def initialize(name)
		@contestants = []
		@name = name
	end

	def addContestants(*contestants)
		@contestants += contestants
	end

	def inspect
		"Tribe #{@name}: #{@contestants}"
	end

	def vote
		@contestants.sample
	end

	def kickoff(contestant)
		@contestants.delete(contestant)
	end

	def empty
		@contestants = []
	end
end

def test
	# create game
	game = Survivor.new

	# create and add contestants
	mike = Contestant.new("Mike")
	game.contestants << mike

	sarah = Contestant.new("Sarah")
	game.contestants << sarah

	jeff = Contestant.new("Jeff")
	game.contestants << jeff

	jimmy = Contestant.new("Jimmy")
	game.contestants << jimmy

	p "Game Contestants", game.contestants

	# add contestants to teams
	red_team = Tribe.new("Red")
	red_team.addContestants(mike, jeff)

	blue_team = Tribe.new("Blue")
	blue_team.addContestants(sarah, jimmy)

	# add teams to game
	game.teams.push(red_team, blue_team)
	p game.teams

	# team challenges
	losing_team = game.challenge

	# vote someone off
	game.vote losing_team
	p game.contestants
	p game.teams

	# endgame
	p "Round 2"
	losing_team = game.challenge
	game.vote losing_team
	p game.teams

	p "Round 3"
	losing_team = game.challenge
	game.vote losing_team
	p game.teams

end

test
