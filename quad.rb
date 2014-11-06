class Quadrilateral

end

class Rectangle < Quadrilateral

end

class Square < Rectangle
end

class Trapezoid < Quadrilateral

end

class Rhombus < Trapezoid

end

def test
    squa = Square.new
    puts squa.is_a? Rectangle
    puts squa.is_a? Quadrilateral 

    rect = Rectangle.new
    puts rect.is_a? Quadrilateral 
    puts not(rect.is_a? Trapezoid) 
end

test