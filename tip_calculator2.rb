
class Bill
	attr_reader :amount
	attr_accessor :tip

	def initialize(amount)
		@amount = amount
		amount *= 100
	end

	def view
		puts "Your current bill amount is $#{@amount}"
		if @tip
			puts "And your tip amount is $#{@tip}"
		end
	end

	def add_tip
		@tip = (gets.chomp.to_f / 100).round(2)
			if @tip < 0.10
				puts "You cheapskate."
			end
		@tip = amount * @tip
	end

	def view_total
		puts "Your bill is $#{amount}" 
		puts "Sales Tax: #{(amount * 0.07).round(2)}"
		puts "Tip: #{tip.round(2)}"
		puts "Total: #{((amount * 0.07).to_f.round(2) + amount + tip).round(2)}"
	end

end


until @paid
	puts "Create, view, tip, or pay?"
	case gets.chomp.downcase
	when "create"
		puts "How much is the bill?"
		current_bill = Bill.new(gets.chomp.to_f)
	when "view"
		if current_bill
			current_bill.view
		else
			puts "Create a bill first"
		end
	when "tip"
		puts "Your bill is #{current_bill.amount}, how much would you like to tip?"
		current_bill.add_tip
	when "pay"
		current_bill.view_total
		@paid = true
	end
end
