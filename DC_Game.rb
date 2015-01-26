class Herotech
	def get_tech_mentorh
	p "Do you want Batman, Steel, or Booster Gold as a mentor?"
	case gets.chomp
	when "Batman"
		p "Of course it's always Batman, everyone always chooses Batman"
		puts "Batman: \"Come on, crime isn't going to wait for you rookie."
		p "Wow he's so stuck up, I mean come on..plot armor much?"
	when "Steel"
		p "Wow that's great you know who Steel is."
		puts "Steel: \"Glad to see someone knows there is more than one 'Man of Steel' in Metropolis."
		p "No you're just a man in a tin suit, nothing special"
	when "Booster Gold"
		p "Wow....are you sure about this choice?"
		puts "Booster: \"Good choice hero, no one can beat me, Booster Gold!"
		p "..See what I mean?"
	end
end
class Herometa
	def get_metamentorh
	p "Do you want Superman, Flash, or Aquaman as a mentor?"
	case gets.chomp
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
	end
end
class Heromagic
	def get_magicmentorh
	p "Do you want Wonder Woman, Zatanna, Doctor Fate as a mentor?"
	case gets.chomp
	when "Wonder Woman"
		p "Excellent choice with the Amazon princess, hopefully she's not in her 'fighting' mood"
		p "Wonder Woman: \"What was that suppose to mean?"
		p "Just that you're an Amazon and your lot has been known for their violence and wild mood swings"
		puts "Wonder Woman draws her sword"
		puts "Wonder Woman: \"Careful with your words mortal"
		p "....ok then, I'm sorry one moment while I change my pants"
		puts "Wonder Woman: \" Let us leave now hero, away from this foul person"
	when "Zatanna"
		p "Nice choice my good Sir/Ma'am, you choose the magician bunny"
		puts "Zatanna"
		puts "Zatanna: \"Woah, what the heck you pig?"
		p "Oh come on you are literally dressed like a magician's assistant"
		puts "Zatanna: \"You know what? !flesruoy kcuf oG you sexist bastard, let's go hero"
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
	else p "Hello #{name}, are you a Hero or a Villain?"
	end
	case gets.chomp
	when "Hero"
		p "Welcome mighty Hero"
		p "What are your powers?"
		puts "Options: Tech, Meta, Magic"
		case gets.chomp
		when "Tech"
			get_techmentorh
		when "Meta"
			get_metamentorh
		when "Magic"
			get_magicmentorh
		end
	end
	when "Villain"
		p "Welcome you vile fiend"
		p "What are your powers?"
		puts "Options: Tech, Meta, Magic"
		case gets.chomp
		when "Tech"
			p "Do you want Joker, Metallo, or Clock King as a mentor?"
			case gets.chomp
			when "Joker"
				p "What is wrong with you? You know he's a psychopath right?"
				p "Even as a villain I gotta say try again"
				puts "Joker: \"Well hello there, what were you saying? Do I need to get Harley to talk to you?"
				puts "Harley: \"Mista J, do ya need me to introduce them to my mallet?"
				puts "Joker: \"Shut up Harley! Go do something with your mutts, I gotta teach the new guy some jokes for Bats"
				p "Well...good luck..you'll need it..."
			when "Metallo"	
				p "Well not much to say about this hunk of junk"
				puts "Metallo: \"....I don't know how to feel about that comment..my kryptonite heart and cold metal skin feel nothing now....I'm dead inside"
				p "See nothing to say..just weird awkward pseudo sympathy.."
			when "Clock King"
				p "Hahahahahaha"
				puts "Player: \"Hahahaha you're right, where's Lex?"
				p "Ahhh, oh we had to put someone in the Meta branch, even though you know...he's not that special...hahahaha"
				puts "Player: \"Hahahahaha...ahh well I guees I'll head over to the Meta branch now"
			end
		when "Meta"
			p "Do you want Lex Luthor, Professor Zoom, Parasite?"
			case gets.chomp
			when "Lex Luthor"
			end
		end
	end
end