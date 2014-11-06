module WyncodeMethods

	# Method for Rounding out numbers
	def roundy(num, precision = 1)
		if num.class == Float
			num.round(precision)
		else
			false
		end
	end

	# Multiplies number by two
	def times_two(number)
		puts number * 2
	end
end