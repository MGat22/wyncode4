def remove_extra_spaces(str = nil, *rest)
  str.squeeze if not str.nil? and str.respond_to? :squeeze
end

def test_remove_extra_spaces
  puts remove_extra_spaces("a b  c   d") == "a b c d"
  puts remove_extra_spaces(nil).nil?
  puts remove_extra_spaces("") == ""
  puts remove_extra_spaces("  ") == " "
  puts remove_extra_spaces("a b  c    d", [], {}) == "a b c d"
  puts remove_extra_spaces([]).nil?
end

puts "Test Results"
test_remove_extra_spaces()