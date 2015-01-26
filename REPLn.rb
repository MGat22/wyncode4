def Hero
	case input
	when "Hero"
		p "Welcome mighty Hero"
		p "What are your powers?"
		puts "Options: Tech, Meta, Magic"
		when "Tech"
			puts "Do you want Batman, Steel, or Booster Gold as a partner?"
		when "Batman"
			p "Of course it's always Batman, everyone always chooses Batman"
			puts "Batman: \"Come on, crime isn't going to wait for you rookie."
		when "Steel"
			p "Wow that's great you know who Steel is."
			puts "Steel: \"Glad to see someone knows there is more than one 'Man of Steel' in Metropolis."
		when "Booster Gold"
			p "Wow....are you sure about this choice?"
			puts "Booster: \"Good choice hero, no one can beat me, Booster Gold!"
			p "..See what I mean?"
		when "Meta"
			p "Do you want Superman, Flash, or Aquaman?"
		when "Superman"
			p "Oh great it's 'The World's Greatest' hero...good choice."
			puts "Superman: \"Let's get started hero, justice awaits."
		when "Flash"
			p "Excellent, it's the Fastest Man alive or one of them I think, there's like...four of them so...yeah"
			puts "Flash: \"Oh come on Superman isn't a metahuman, he's not even human!"
			puts "Superman: \"Come now Flash, heroics aren't limited by species or race..you're not racist or xenophobic are you?"
			puts "Flash: \"Forget it, lets get going"
		when "Aquaman"
			p "Hahahaha, that's funny, seriously, try again"
			p "Player: \"......I was serious, give me Aquaman"
			p "But that was a joke, no one wants Aquaman, not even Aquaman wants to be Aquaman"
			puts "Player: \"I want Aquaman why add him if it as a joke?"
			p "Because we didn't expect you to actually want him"
			puts "Player: \"Just get me Aquaman"
			p "Fine..."
			puts "Aquaman was here the whole time"
			puts "Aquaman: \"...I don't know if I want to do this anymore, that hurt.."
		when "Magic"
			puts "Do you want Wonder Woman, Zatanna, Doctor Fate."
		when "Wonder Woman"
			p "Excellent choice with the Amazon princess, hopefully she's not in her 'fighting' mood"
			p "Wonder Woman: \"What was that suppose to mean?"
			p "Just that you're an Amazon and your lot has been known for their violence and wild mood swings"
			puts "Wonder Woman draws her sword"
			puts "Wonder Woman: \"Careful with your words mortal"
			p "....ok then, I'm sorry one moment while I change my pants"
			puts "Wonder Woman: \" Let us leave now hero, away from this foul person"
		when "Zatanna"
			p "Nice choice my good Sir/Ma'am, you choose the magician's assistant"
			puts "Zatanna"
			puts "Zatanna: \"Woah, what the heck you pig?"
			p "Oh come on you are literally dressed like a magician's assistant"
			puts "Zatanna: \"You know what? !flesruoy kcuf oG you sexist bastard, let's go hero"
			input = gets.chomp
		when "Doctor Fate"
			p "Awesome choice the schizo in a tin hat."
			puts "Doctor Fate: \"Fate decrees that you are not worthy of his time"
			p "Sure, whatever you say nutso"
	end
end
quit = false
until quit == true
	p "Welcome to the DCUO text adventure"
	p "What is your name?"
	name = gets.chomp
	case name
		when "quit"
		exit
		else p "Hello #{name}, are you a Hero or a Villian?"
		input = gets.chomp
	end
	case input
		Hero
	end
	case input
	when "Villian"
		puts "Welcome you vile fiend"
		puts "What are your powers?"
		puts "Options: Tech, Meta, Magic"
	end
end