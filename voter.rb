require './VoterMethods.rb'
require './voterClass.rb'

# Main file
loop do
	case ask("What would you like to do? Create, List, Update or Vote.")
		when 'create'
			create
		when 'list'
			list_all
		when 'update'
			update
		when 'vote'
			vote
		end
end