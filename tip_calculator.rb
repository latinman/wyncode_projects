puts "How much is the bill?"

bill = gets.to_f
puts bill

bill *= 100
puts bill

tip = bill * 0.20
total = bill + tip
puts total

total = total.round.to_f
puts total

total = total / 100
puts total

puts "The bill is $#{total}"
