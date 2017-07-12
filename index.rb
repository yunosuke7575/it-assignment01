require "./drink"

cola = Drink.new(name: "コーラ", price: 120, amount: 5)

i = 0

while i < 100 do 
	options = ["コイン投入","ジュース一覧", "ジュース購入","払い戻し"]
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

	elsif choice == 2
		puts "何個買いますか？"
		purchase_number = gets.chomp.to_i 
		total_sales = cola.price * purchase_number
		
		if total_money > total_sales && cola.amount > 0 
			total_money = total_money - total_sales
			cola.amount = cola.amount - purchase_number
			puts "売り上げは#{total_sales}円です"
			puts "残金は#{total_money}円です"
		else
			puts "購入できません"
		end

	else 
		puts "お釣りは#{total_money}円です"
		break
	end
	 i += 1 
end

