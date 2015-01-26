dead_people = ["Ethel", "Mortimer", "Bufford"]
alive_people = ["Kelly", "Joe", "Megan"]
sick_people = alive_people.slice (0, 2)
dead_people.include? "Mortimer"
alive_people.include? "Kelly"

name = "Mortimer"
if dead_people.include? name
	puts "Don't send questionnaire to #{name}."
end
if dead_people.include? name
	puts "Don't send questionnaire to #{name}"
else
	puts "Send questionnaire to #{name}"
end