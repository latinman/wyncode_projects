#  Class file

###
# PERSON
###
class Voter
	attr_accessor :name, :view
	@@voters = []
	def initialize(name, view)
		@view = view.split.map(&:capitalize).join(' ')
		@name = name.split.map(&:capitalize).join(' ')	

		@@voters << self
	end

	def self.all
		@@voters
	end

	def self.list
		self.all.each { |voter| puts voter }
	end

	def to_s
		"#{self.class}: #{name} #{view}"
	end

	def self.find_by(name)
		Voter.all.each do |voter|
			if voter.name == name
				return voter
			else
				puts "No person by that name found."
			end
		end
	end
end

###
# POLITICIAN
###

class Politician 
	attr_accessor :name, :party
	@@politicians = []
	def initialize(name, party)
		@name = name.split.map(&:capitalize).join(' ')
		@party = party.split.map(&:capitalize).join(' ')
		@@politicians << self
	end

	def self.all
		@@politicians
	end

	def self.list
		self.all.each { |politician| puts politician }
	end

	def to_s
		"#{self.class}: #{name} #{party}"
	end

	def self.find_by(name)
		Politician.all.each do |politician|
			if politician.name == name
				return politician
			end
		end
		return "No politician by that name found."
	end
end
