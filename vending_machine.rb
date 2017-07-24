require "./drink"

class VendingMachine
	
	attr_accessor :total_money
	attr_accessor :total_sales

	def initialize 
		@total_money = 0
		@total_sales = 0
		@cola = Drink.new(name: "cola", price: 120, amount: 5)
	end

	def insert 
		@coin = gets.chomp.to_i
			if @coin == 10 || @coin == 50 || @coin == 100 || @coin == 500 || @coin == 1000 
				@total_money += @coin
			else
				@coin
			end
	end 

	# 修正案１：@cola, @water, @redbull... と追加されていく度に、drinks配列の要素が１つ、２つ、３つと増えていく。
	#           このとき、例えばstore_redbullメソッドが呼ばれたときに、drinks配列に要素が追加される必要がある。
	def info
		if @redbull == nil && @water == nil
			drinks = [@cola.info]
		elsif @water == nil
		# スペルミス？誤：driks 正：drinks
			driks = [@cola.info, @redbull.info]
		elsif @redbull == nil
		# スペルミス？誤：driks 正：drinks
			driks = [@cola.info, @water.info]
		else
			drinks = [@cola.info, @water.info, @redbull.info]
		end
	end

	def purchase_cola
		if @total_money > @cola.price && @cola.amount != 0 
			@cola.amount -= 1 
			@total_sales += @cola.price
			@total_money -= @cola.price
		else
		end
	end 

  # 予期せぬエラー対策のため、 @redbull.amount != 0 ではなく、 @redbull.amount !<= 0 にしましょう。
  # （!<= という表現の仕方で合っているかは不明です。申し訳ありません）
  # if の逆の unless を使うのも手です。（unless・・・falseの場合実行される）
	def purchase_redbull
		if @total_money > @redbull.price && @redbull.amount != 0 
			@redbull.amount -= 1 
			@total_sales += @redbull.price
			@total_money -= @redbull.price
		else
		end
	end

	def purchase_water
		if @total_money > @water.price && @water.amount != 0 
			@water.amount -= 1 
			@total_sales += @water.price
			@total_money -= @water.price
		else
		end
	end

	# 修正案１：メソッドをひとまとめにし、今後新しい商品を追加しやすいようにしましょう。
	# （どの商品を追加するのかの判定も、同時に必要になる）
	# def add_product
	#   @drinkname = gets.chomp
	#   case @drinkname
	#     when redbull then
	#       @redbull = ...
	#     when water then
	#       @water = ...
	#     else
	#       puts "そのような名前の商品は存在しません"
	#   end
	#
	# 修正案２：購入処理をし、例えば在庫4個になったとしても、このメソッドを実行すると、
	#           amount: 5 になってしまいます。これは仕様でしょうか？
	def store_redbull
		@redbull = Drink.new(name: "redbull", price: 200, amount: 5)
	end

	# 同上
	def store_water
		@water = Drink.new(name: "water", price: 100, amount: 5)
	end

	def refund
		total_money.tap { @total_money =0 }
	end

end