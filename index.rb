require "./drink"
require "./machine"

cola = Drink.new(name: "コーラ", price: 120, amount: 5)
money = Money.new

i = 0

while i < 100 do 
	options = ["コイン投入","ジュース一覧", "終了する"]
	index = 0

	options.each do |option|
		puts "#{index}.#{option}"
		index += 1
	end

	choice = gets.chomp.to_i

	if choice == 0 
		puts "お金を入れてください"
		coin = gets.chomp.to_i

		if coin == 10 || coin == 100 || coin == 500 || coin == 1000 
			total_money = total_money.to_i + coin
			puts "合計金額は#{total_money}円です"
		else
			change = coin 
			puts "お釣りは#{change}円です"
		end
		
	elsif choice == 1
		puts "#{cola.info}"
	else 
		break
	end
	 i += 1 
end

