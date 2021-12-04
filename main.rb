require "pry"

SHOP_NAME = "ラーメン屋　りゅーたろう"
MONEY = 3000

items = Item.impotr(path: "items.csv")
shop = Shop.new(name: SHOP_NAME, items: items)
user = User.new(money: MONEY)

