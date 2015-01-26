class TipCalculator
	attr_accessor :bill, :tip_percent, :num_people

	def Intitalize
		tip.calc.get_the_bill.
		tip_calc.get_the_tip_percent
		tip_calc.get_the_num_people
		puts tip_calc.my_share
	end

	def calculate_total_bill
		total = @bill * (1 + (@tip_percent/100.00))
		puts "The total bill is #{@total}"
	end

	def calculate_my_share
		puts "My share of the bill is #{@total / @num_people}"
	end

	def get_the_bill
		@bill = get_a_float "Please enter a bill amount:"
	end

	def get_the_tip_percent
		@tip_percent = get_a_float "Please enter a tip precet:"
	end

	def get_the_num_people
		@num_people = get_a_float "Please enter dinner party size:"
	end

	private
	def get_a_float (request)
		puts request
		gets.to_f
	end
end

tip_calc= TipCalculator.new