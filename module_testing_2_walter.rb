require './module_testing_walter.rb'


class Primate

	include HasArms
	include HasLegs

end

class Human < Primate

end


class Ape < Primate

end

class Platypus

	include HasLegs
	include LeysEggs	

end


class Snake

	include LaysEggs

end

human = Human.new

human.wave_arms