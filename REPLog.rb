quit = false
until quit == true
	puts "Welcome to Arkham Asylum Hello Kitty!"
	puts "What do you want to do?"
	puts "Options: look around, smack a prisoner, run"
	option = gets.chomp
	case option
	when "quit"
		exit
	when "look around"
	    puts "You see Scarecrow talking to a Poison Ivy doll"
	    puts "Scarecrow: \"Oh Scarecrow you're so macho, much better than that wallflower Batman.\""
	    puts "Scarecrow looks at you and screams"
	    puts "Scarecrow: \"Don't judge me!\""
	when "smack a prisoner"
	    puts "Prisoner : \"Ouch!.....Would it be weird if I asked for more?\""
	    puts "Hello Kitty backs away slowly"
	when "run"
	    puts "Harley Quinn: \"Where ya going?\""
	    puts "Harley Quinn hits you with her hammer"
	    puts "You are unconcious now"
	else
	    puts "Santa punches you in the face"
	    puts "Santa: \"Quit messin' around.\""
	end
end