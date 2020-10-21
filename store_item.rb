#item store listings
#spoon1 = { :size => "small", :color => "silver", :price => 5, :use => "playing spoons" }
#spoon2 = { size: "medium", color: "gold", price: 15, use: "eating soup or cereal" }
#spoon3 = { :size => "large", :color => "platinum", price: 30, :use => "digging holes" }

#puts "A #{spoon1[:size]} #{spoon1[:color]} spoon at the low price of #{spoon1[:price]} dollars. This spoon is best used for #{spoon1[:use]}."
#puts "A #{spoon2[:size]} #{spoon2[:color]} spoon at the reasonable price of #{spoon2[:price]} dollars. This spoon is best used for #{spoon2[:use]}."

class Spoon
  attr_reader :size, :color, :price, :use
  attr_writer :size, :color, :price, :use

  def initialize(input_size, input_color, input_price, input_use)
    @size = input_size
    @color = input_color
    @price = input_price
    @use = input_use
  end

  def description
    puts "This is a #{size} #{color} spoon for #{price} dollars that is best used for #{use}"
  end
end

spoon1 = Spoon.new("small", "silver", 5, "playing spoons")
spoon1.description
spoon2 = Spoon.new("medium", "gold", 15, "eating soup or cereal")
spoon2.description
spoon3 = Spoon.new("giant", "platinum", 30, "digging holes")
spoon3.description
spoon1.size = "miniscule"
spoon1.description
spoon3.price = 500
spoon3.use = "nothing. This is a versace spoon, don't buy it."
spoon3.description
