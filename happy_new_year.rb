def year
	(1..10).to_a.reverse.each { |num| puts num; sleep 1}
	puts "Happy New Year!"; sleep 2
	year
end

year
