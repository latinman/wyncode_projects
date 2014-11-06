require './WyncodeMethods.rb'
include WyncodeMethods

	# Testing
	def test_roundy
		puts roundy(10.5246, 2) == 10.52
		puts roundy("false") == false
		puts roundy(nil) == false
	end

	# Test for times_two
	def test_times_two
		puts times_two(3) == 6
		puts times_two("hi") == "hihi"
	end


puts test_roundy
puts test_times_two



