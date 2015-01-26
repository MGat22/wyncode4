dead_people = ["Ethel", "Mortimer", "Bufford"]
alive_people = ["Kelly", "Joe", "Megan"]
sick_people = alive_people.slice(0, 2)
name = gets
if dead_people.include? name
	puts "Don't send questionnaire to #{name}."
elsif sick_people.include? name
	puts "Don't send a questionnaire to #{name} yet."
	else
	puts "Send a questionnaire to #{name}."
end