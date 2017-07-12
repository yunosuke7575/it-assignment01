require "./drink"

cola = Drink.new(name: "コーラ", price: 120, amount: 5)
redbull = Drink.new(name: "レッドブル", price: 200, amount: 5)
water = Drink.new(name: "水", price: 100, amount: 5)


options = ["コイン投入","ジュース一覧", "ジュース購入","払い戻し"]
drinks = [cola, redbull, water]


i = 0

while i < 100 do 
	
	option_index = 0
	drinks_index = 0

	options.each do |option|
		puts "#{option_index}.#{option}"
		option_index += 1
	end

	puts "番号を入力してください"
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

		drinks.each do |drink|
			puts "#{drinks_index}.#{drink.info}"
			drinks_index += 1
		end

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


