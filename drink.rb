class Drink

attr_accessor :name
attr_accessor :price
attr_accessor :amount 

def initialize(name:, price:, amount:) 
	self.name = name 
	self.price = price 
	self.amount = amount 
end 

def info 
	return "#{self.name} #{self.price}円 残り#{self.amount}個"
end

end 