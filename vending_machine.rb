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
		if @redbull == nil && @water == nil
			drinks = [@cola.info]
		elsif @water == nil
			driks = [@cola.info, @redbull.info]
		elsif @redbull == nil
			driks = [@cola.info, @water.info]
		else
			drinks = [@cola.info, @water.info, @redbull.info]
		end
	end

	def purchase_cola
		if @total_money > @cola.price && @cola.amount != 0 
			@total_money -= @cola.price
			@cola.amount -= 1 
			@total_sales += @cola.price
		else
		end
	end 

	def store_redbull
		@redbull = Drink.new(name: "レッドブル", price: 200, amount: 5)
	end

	def store_water
		@water = Drink.new(name: "水", price: 100, amount: 5)
	end

	def refund
		total_money.tap { @total_money =0 }
	end
end