def countdown
	10.downto(1) do |n|
		puts n
		sleep(1)
	end
	puts "Happy New Year!\n"	
end
15.times do countdown
end