
 
# Method for Rounding out numbers
def roundy(num, precision = 1)
	if num.class == Float
		num.round(precision)
	else
		false
	end
end

puts roundy(3.452)

# Testing
def test_roundy
	puts roundy(10.5246, 2) == 10.52
	puts roundy("false") == false
	puts roundy(nil) == false
end

test_roundy

