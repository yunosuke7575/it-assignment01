class Machine 


def insert 
	coin = gets.chomp.to_i
	if coin == 10 || coin == 100 || coin == 500 || coin == 1000 
		total_money = total_money.to_i + coin 
		return total_money
	else
		change = coin
		return change
	end 
end 

end 