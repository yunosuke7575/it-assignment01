=begin
puts "ようこそ"

options = ["コイン投入","合計金額","払い戻し"]
index = 0

options.each do |option|
	puts "#{index}.#{option}"
	index += 1
end

choice = gets.chomp.to_i


if choice == 0 
	puts "お金を入れてください"
	coin = gets.chomp.to_i
	puts "#{coin}円を投入しました"
elsif choice == 1 
	puts "合計金額です"
else 
	puts "お釣りです"
end 
=end

i = 0

while i < 100 do 
	options = ["コイン投入","払い戻し"]
	index = 0

	options.each do |option|
		puts "#{index}.#{option}"
		index += 1
	end

	choice = gets.chomp.to_i

	if choice == 0 
		puts "お金を入れてください"
		coin = gets.chomp.to_i
		total_money = total_money.to_i + coin 
		puts "合計金額は#{total_money}円です"
	else 
		puts "お釣りは#{total_money}円です"
		break
	end
	 i += 1 
end

=begin
puts "お金を入れる"
coin = gets.chomp.to_i
total_money = total_money.to_i + coin 
puts "合計金額は#{total_money}円です"
i += 1 
end 
=end