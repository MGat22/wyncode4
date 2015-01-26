puts "How much is the bill?"

bill = gets.to_f
tip_percent = 0.20

tip = bill * tip_percent
total_bill= bill + tip.to_i

puts "The total is #{sprintf("%.2f", total_bill)}"