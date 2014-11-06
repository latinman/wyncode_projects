# class MyClass
# 	def inspect
# 		"Something"
# 	end
# end

# puts MyClass.new
# puts MyClass.new.to_s

# class Table
# 	@@id = 0
# 	attr_reader :id

# 	def initialize
# 		@id = @@id
# 		@@id += 1
# 	end

# 	def preview_next_id
# 		@@id
# 	end
# end

# t1 = Table.new
# p t1.id
# p t1.preview_next_id

# t2 = Table.new
# p t2.id
# p t2.preview_next_id

# t3 = Table.new
# p t3.id
# p t3.preview_next_id

# class Table
# 	@@id = 0

# 	def change_next_id(next_id)
# 		@@id = next_id
# 	end

# 	def self.preview_next_id
# 		@@id
# 	end
# end

# p Table.preview_next_id

# t = Table.new
# t.change_mext_id 100
# p Table.preview_next_id

# class Parent
# 	protected
# 	def a_protected_method
# 		puts "family secret"
# 	end

# 	class Child < Parent
# 		def interact(child)
# 			child.a_protected_method
# 		end
# end

# p = Parent.new
# c1 = Child.new
# c2 = Child.new

# c1.interact(c2)

# class Parent
# 	def whoami
# 		puts "I'm a parent"
# 	end
# end

# class Child < Parent
# 	def whoami
# 		puts "I'm a child"
# 	end
# end

# c = Child.new
# c.whoami

# p = Parent.new
# p.whoami

# class Person
# 	def speak
# 		"I'm a person"
# 	end
# end

# class Parent < Person
# 	def speak
# 		super + " who is also a parent"
# 	end
# end

# p = Parent.new
# puts p.speak

# class Parent
# 	def speak(words)
# 		puts words
# 	end
# end

# class Child < Parent
# 	def speak
# 		super "Gaga Googoo"
# 	end
# end

# c = Child.new
# c.speak

# class Parent
# 	def speak
# 		puts "I'm a person"
# 	end
# end

# class Child < Parent
# 	def speak(words)
# 		super()
# 		puts "...and I'm just a child speaking"
# 	end
# end

# c = Child.new
# c.speak "something"

# def make_a_villain(name, physical_traits={}, personality_traits={}, *side_notes)
# 	eyes = physical_traits[:eye_color]
# 	hair = physical_traits[:hair_color]

# 	morality = personality_traits[:morality]
# 	humor = personality_traits[:sense_of_humor]

# 	puts "#{name} can be recognized by their #{eyes} eyes and #{hair} hair."
# 	puts "Reports state #{name} is #{morality} and is #{humor}."

# 	unless side_notes.empty?
# 		puts "Notable features of #{name} include:"
# 		puts side_notes
# 	end
# end

# make_a_villain("Dr. Evil", {eye_color: "red", hair_color: "red-brownish"}, {morality: "angry", sense_of_humor: "sarcastic"})

# class Table
# 	attr_accessor :num_legs

# 		def initialize(num_legs)
# 			raise "Halt!"
# 			if num_legs > 0
# 				@num_legs = num_legs
# 			else
# 				raise "Invalid number of num_legs"
# 		end
# 	end
# end

# begin
# 	table = Table.new(4)
# rescue => err
# 	# puts "Can't create a table."
# 	# puts "Do other stuff instead."
# 	p err.message
# 	puts  err.backtrace
# end

# puts "Hello"

# def a
# 	b 
# end

# def b

# 	c rescue puts "Saves the day!"
# end

# def c
# 	d 
# end

# def d
# 	raise "Boom!"
# end

# a


# begin
# 	# run when good stuff happens
# 	b = nil
# 	raise "Bad stuff" if b.nil?
# rescue
# 	# handle when b is nil
# end


# b = nil
# 	if b.nil?
# 		# use b
# 	else
# 		# handle when b is nil
# 	end


# def add_two(number)
# 	if number.respond_to? :+
# 		number + 2
# 	else
# 		false
# 	end
# end

# p add_two(4)

# begin
# 	1/0
# rescue ZeroDivisiononError
# 	puts "I can't divide by zero."
# end

# def max(num1, num2)
# 	[num1, num2].max
# end

# def test_max
# 	puts max(0, 2) == 2
# 	puts max(45, 23) == 45
# 	puts max(193, 439) == 439
# end

# test_max

# def max_refactor(*others)
# 	others.max { |a,b| a <=> b }
# end

# def test_max_refactor
# 	puts max_refactor(0,1) == 1
# 	puts max_refactor(0,1,2) == 2
# 	puts max_refactor(0,1,2.0,6.3) == 6.3
# end

# test_max_refactor


# a = ("A".."Z").to_a
# b = ("a".."b").to_a


# p a.zip(b)


# (1..100).map do |n|
# 	if n % 3 == 0 && n % 5 == 0
# 		puts "FizzBuzz"
# 	elsif n % 3 == 0
# 		puts "Fizz"
# 	elsif n % 5 == 0
# 		puts "Buzz"
# 	else
# 		puts n
# 	end
# end
	
# a = [1,2,3] + [[1,2], [1,2], [1,2]].inject(:+)

# p a

# arr = [[1,2], [3,4]].inject([5,6]){ |a,b| a + b }
# p arr

# arr1 = [[1,2], [3,4]]
# arr2 = [1,2,3,4]

# p arr2
# p arr1.inject(:-)

# big_array = [[1,2,3],[4,5,6],[7,8,9,10]]

# def sum(arr)
# 	# On another computer do
# 	arr.inject(:+)
# end

# result = big_array.map do |chunk|
# 	sum(chunk)
# end.reduce(:+)

# p result
# a = 1
# arr1 = %w[#{a} b c d]
# arr2 = %W[#{a} b c d]

# p arr1,arr2

# p "welcome to jurassic park".split
# p ["welcome", "to", "jurassic", "park"]
# p %W(welcome to jurassic park)

arr = [1,1,1,2,2,2,2,3,3,3,3]

newarr = []
arr.each do |n|
	newarr << n unless newarr.include? n
end

puts newarr

