puts "The Heist!"
puts "Are you in or are you out?"

def ask(question)
	say(question)
	gets.chomp
end

def say(statement)
	puts statement
end

##
# handles police man case
##
def police_man
	puts "You see a big police man staring at you funny."
	puts "Options: You walk the other direction, you go ask him a question."

	second_answer = ask
	case second_answer
	when "You walk the other direction"
		puts "Cop: \"Where are you going?\""
	else
		puts "Cop: \"Haven't I arrested you before?\""
	end
end

question = "Options: Be the first in, be the spotter, the getaway driver"
first_answer = ask(question)
case first_answer
when "Be the first in"
	police_man

###
# spotter 
###
when "be the spotter"
	puts <<-END
	   There's a lot of action going on the street.  A marching band is about to start their parade and leading the way is your best friend's sister which she waves at you.
	END

	question = "Options:", "\t1. tell your accomplices?", "\t2. you wave back."

    second_response = nil
 	until ["1","2"].include? second_response
        second_response = ask(question)
		case second_response
		when "1", "tell your accomplices"
			say "You give the code that their may be trouble ahead."
		when "2"
			say "Something for case 2"
		else
			# user entered garbage
			say "You: \"Hi Sabrina, I'm just here to watch the parade and immediately go home.\""
		end
	end
	# options must be one of "1" or "2"

###
# getaway driver
###
when "the getaway driver"
	puts "The car you're being supplied doesn't look too fast or reliable. They given you a 1975 Oldsmobile."

	question = "Options: 1. You stay put with that Oldsmobile, 2. do you steal a more reliable, fast car?"

	option3 = ask(question)
	case option3
	when "1"
		puts "You're accomplices run out with the bags of money, but unfortunately the car won't start."
	else
		puts "The nearest reliable car is a cop car."
	end

###
# default
###
else
	puts "Your accomplice runs up to you."
	puts "Accomplice: \"I'm too scared. I can't do it.\""
end
