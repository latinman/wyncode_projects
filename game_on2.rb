puts "The Heist!"
puts "Are you in or are you out?"
puts "Options: Be the first in, be the spotter, the getaway driver"

option = gets.chomp
case option
when "Be the first in"
  puts "You see a big police man staring at you funny."

  puts "Options: You walk the other direction, you go ask him a question."

  option = gets.chomp
  case option1
  when "You walk the other direction"
    puts "Cop: \"Where are you going?\""
  else
    puts "Cop: \"Haven't I arrested you before?\""
  end

when "be the spotter"
  puts "There's a lot of action going on the street. A marching band is about to start their
  parade and leading the way is your best friend's sister which she waves at you."

  puts "Options: 1. tell your accomplices?, 2. you wave back."

  option2 = gets.chomp
  case option2
    when "1"
      puts "You give the code that their may be trouble ahead."
    else
      puts "You: \"Hi Sabrina, I'm just here to watch the parade and immediately go home.\""
  end


when "the getaway driver"
  puts "The car you're being supplied doesn't look too fast or reliable. They gave you a 1975 Oldsmobile."

  puts "Options: 1. You stay put with that Oldsmobile, 2. do you steal a more reliable, fast car?"

  option3 = gets.chomp
  case option3
  when "1"
    puts "You're accomplices run out with the bags of money, but unfortunately the car won't start."
  else
    puts "The nearest reliable car is a cop car."
  end

else
  puts "Your accomplice runs up to you."
  puts "Accomplice: \"I'm too scared. I can't do it.\""
end
