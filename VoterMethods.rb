require './voterClass.rb'

#  Methods file
def ask(question)
	puts question
	gets.chomp.downcase
end

def list_all
	Politician.all.each do |politician|
		puts "Politician: #{politician.name} who is #{politician.party}"		
	end
	Voter.all.each do |voter|
		puts "Voter: #{voter.name} who is a #{voter.view}."
	end
end


def create
	case ask("Politician or Person?")
	when "politician"
		create_politician
	when "person"
		create_voter
	end
end


def create_politician
	Politician.new(name = ask("Name?"), party = ask("Party: Democrat or Republican?"))
	puts "You created #{name.capitalize} a #{party.capitalize} politician."
end

def create_voter
	name = ask("name")
	view = ask("View: Liberal, Conservative, Tea Party, Socialist or Neutral?")
	Voter.new(name, view)
	puts "You created #{name.capitalize} a #{view.capitalize} voter."
end

# Updating the list
def update
	case ask("Politician or Voter?")
	when "politician"
		edit_politician = Politician.find_by(ask("Name?"))
		case ask("Change name, or party?")
		when "name"
			edit_politician.name = ask("What is the new name?")
		when "party"
			edit_politician.party = ask("What is the new party?")
		end
	when "voter"
		edit_voter = Voter.find_by(ask("Name?"))
	end
	#  show change
end

