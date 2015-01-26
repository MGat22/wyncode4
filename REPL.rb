quit = false
until quit == true
	puts "Welcome to Arkham Asylum, what's your name?"
	name = gets.chomp
	puts "What do you want to do #{name}?"
	puts "Options: look around, smack a prisoner, run away"
	option = gets.chomp
	case option
	when "quit"
		quit = true
	when "look around"
	    puts "You see Scarecrow talking to a Poison Ivy doll"
	    puts "Scarecrow: \"Oh Scarecrow you're so macho, much better than that wallflower Batman.\""
	    puts "Scarecrow looks at you and screams"
	    puts "Scarecrow: \"Don't judge me!\""
	when "smack a prisoner"
	    puts "Ouch! Would it be weird if I asked for more?"
	when "run away"
	    puts "Harley Quinn: \"Where ya going?\""
	else
	    puts "Santa punches you in the face"
	    puts "Santa: \"Quit messin' around.\""
	end
end