require "./drink"

class VendingMachine
	
	attr_accessor :total_money
	attr_accessor :total_sales

	def initialize 
		@total_money = 0
		@total_sales = 0
		@cola = Drink.new(name: "コーラ", price: 120, amount: 5)
	end

	def insert 
		@coin = gets.chomp.to_i
			if @coin == 10 || @coin == 50 || @coin == 100 || @coin == 500 || @coin == 1000 
				@total_money += @coin
			else
				@coin
			end
	end 

	def info
		@cola.info
	end
end