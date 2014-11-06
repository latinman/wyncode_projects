class Quadrilateral

end

class Rectangle < Quadrilateral

end

class Square < Rectangle
	def initialize(side)
		@side = side

	end

	def perimeter
		@side * 4
	end

	def area
		@side * @side
	end

	def side
		@side 
	end
end

class Rhombus < Quadrilateral

end

class Trapezoid < Quadrilateral

end

def test
    squa = Square.new(1)
    money = Square.new(2)
    puts squa.perimeter == 4
    puts money.perimeter == 8
    puts squa.area == 1
    puts money.area == 4
    puts squa.side == 1
    puts money.side == 2
end

test