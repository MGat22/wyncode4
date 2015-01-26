class Survivor
	attr_accessor :contestants, :tribes

	def initialize
		@contestants = []
		@tribes = []
	end

	#return the losing team
	def challenge
		losing_tribe = @tribes.sample
		p "Losing tribe", losing_tribe
		losing_tribe
	end

	def vote(losing_tribe)
		loser = losing_tribe.vote
		p "Loser", loser
		losing_tribe.kickoff(loser)
		kickoff(loser)
	end

	def kickoff(contestant)
		@contestants.delete(contestant)

		if @contestants.size <= 1
			puts "Congratulations #{@contestants.last.name}"
		elsif @contestants.size <= 5
			@tribes = []

			tribe = Tribe.new("Purple")
			tribe.contestants = @contestants
			@tribes << tribe
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
	#create game
	game = Survivor.new

	#creating contestants
	mike = Contestant.new("Mike")
	game.contestants << mike

	sarah = Contestant.new("Sarah")
	game.contestants << sarah

	jeff = Contestant.new("Jeff")
	game.contestants << jeff

	jimmy = Contestant.new("Jimmy")
	game.contestants << jimmy

	p "Game Contestants", game.contestants

	#adding contestants to tribes
	red_tribe = Tribe.new("Red")
	red_tribe.addContestants(mike, jeff)

	blue_tribe = Tribe.new("Blue")
	blue_tribe.addContestants(sarah, jimmy)

	#add tribes to game
	game.tribes.push(red_tribe, blue_tribe)
	p game.tribes

	# tribe challenges
	losing_tribe = game.challenge

	# vote someone off
	game.vote losing_tribe
	p game.contestants
	p game.tribes
	
	#endgame
	p "Round 2"
	losing_tribe = game.challenge
	game.vote losing_tribe
	p game.tribes

	p "Round 3"
	losing_tribe = game.challenge
	game.vote losing_tribe
	p game.tribes

end

test
