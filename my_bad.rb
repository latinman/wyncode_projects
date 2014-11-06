# class  WrongGaz < StandardError
# 	attr_accessor :fuel
# 	def initialize
# 		super "Wrong type of gaz!"
# 	end
# end

# fuel = %w[humans sugar water olive oil]

# fuel.each { |g| f }


# raise WrongGaz Error if  fuel.include "humans"

# f = WrongGaz.new
# p f.fuel
	

class MyError < StandardError
	def initialize
		super "This is my error, there are many like it, but this one is mine."
	end
end

begin
	raise MyError
end