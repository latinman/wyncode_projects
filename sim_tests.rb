require './voterClass.rb'

# Politician Tests
# Create
Politician.new("Frank Ortiz", "Democrat")
puts Politician.all[0].name == "Frank Ortiz"
puts Politician.all[0].party == "Democrat"

# Listing Politician
Politician.list

# Search
puts Politician.find_by("Frank Ortiz").to_s == "Politician: Frank Ortiz Democrat"

# Udate

Voter.new("Frank Ortiz", "Democrat")
puts Voter.all[0].name == "Frank Ortiz"
puts Voter.all[0].view == "Democrat"



pol = Politician.new("Frank Ortiz", "Democrat")

p pol.name = "something"
p Politician.find_by("Frank Ortiz").name = "something"
p Politician.find_by("something")


# Listing Voter
Voter.list

puts Voter.find_by("Frank Ortiz").to_s == "Voter: Frank Ortiz Socialist"

per = Voter.new("Frank Ortiz", "Socialist")

p per.name = "something"
p Voter.find_by("Frank Ortiz").name == "something"
puts Voter.find_by("something")




