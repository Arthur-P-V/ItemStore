require "./food.rb"
require "./spoon.rb"

spoon1 = Spoon.new({ size: "small", color: "silver", price: 5, use: "playing spoons" })
spoon1.description
spoon2 = Spoon.new({ size: "medium", colore: "gold", price: 15, use: "eating soup or cereal" })
spoon2.description
spoon3 = Spoon.new({ size: "giant", color: "platinum", price: 30, use: "digging holes" })
spoon3.description
spoon1.size = "miniscule"
spoon1.description
spoon3.price = 500
spoon3.use = "nothing. This is a versace spoon, don't buy it."
spoon3.description
apple = Food.new({ size: "medium", color: "red", price: 2.00, use: "eating", shelf_life: "1 week" })
apple.description
spoon1.greeting
