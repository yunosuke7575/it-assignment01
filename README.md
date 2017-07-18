#自販機ruby_app

```
$ irb
> require "./vending_machine.rb"
## VendingMachine.newでmachineを作成
> machine = VendingMachine.new
## machine.insertでお金を挿入
> machine.insert 500 => 500 
> machine.insert 500 => 1000
> machine.insert 1 => 1 
## machine.infoで自販機にあるドリンクを表示
> machine.info => => ["cola 120円 残り5個"]
## machine.store_redbullでredbullを自販機に追加
> machine.store_redbull => => #<Drink:0x007fb530718260 @name="redbull", @price=200, @amount=5>
> machine.info => ["cola 120円 残り5個", "redbull 200円 残り5個"]
> machine.store_water => #<Drink:0x007fefe5dc5b90 @name="water", @price=100, @amount=5>
> machine.infor => ["cola 120円 残り5個", "water 100円 残り5個", "redbull 200円 残り5個"]
## machine.purchase_colaでcolaを購入、釣り銭を表示
> machine.purchase_cola => 880
> machine.purchase_cola => 760
> machine.purchase_redbull => 560
## machine.total_moneyで残金表示
> machine.total_moeny => 560
## machine.total_salesで売り上げ表示
> machine.total_sales => 440
## machine.refundでお釣り返却
> machine.refund => 560
> machine.total_money => 0
> machine.info => ["cola 120円 残り3個", "water 100円 残り5個", "redbull 200円 残り4個"]
```
