module String2
def string_question2
puts <<END
"Just typing to_s works in irb. What does it evaluate to? 
to_s isn’t being added to Ruby by the Kernel library. In that case, write to_s into irb in another way using the standard Ruby syntax."
END
end

def string_answer2
puts "Answer:"
puts "self.to_s"
end	
end