class Quadrilateral
	attr_accessor :left, :right, :top, :bottom
	def initialize (left, right, top, bottom)
		@left = left
		@right = right
		@top = top
		@bottom = bottom
		@sides = 4
	end
	def perimeter
		@right + @left + @top + @bottom
	end
end
 
class Rectangle < Quadrilateral
	def area
		@right * @bottom
	end
end
class Square < Rectangle
	def initialize(side)
		@left = side
		@right = side
		@top = side
		@bottom = side
		@sides = 4
	end
	def length
		@right || @left
	end
end
class Trapezoid < Quadrilateral
end
class Rhombus < Trapezoid
	def initialize(side)
	@left = side
	@right = side
	@top = side
	@bottom = side
	@sides = 4
	end
	def length
		@right || @left
	end
end
 
def test
	squa = Square.new(4)
	puts squa.perimeter
	puts squa.area
	puts squa.length
 
	rect = Rectangle.new(4, 4, 8, 8)
	puts rect.perimeter
	puts rect.area
 
	trap = Trapezoid.new(6, 6, 2, 5)
	puts trap.perimeter
	
	rhom = Rhombus.new(4)
	puts rhom.perimeter
	puts rhom.length
end
 
test