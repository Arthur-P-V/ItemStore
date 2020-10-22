#item store listings
#spoon1 = { :size => "small", :color => "silver", :price => 5, :use => "playing spoons" }
#spoon2 = { size: "medium", color: "gold", price: 15, use: "eating soup or cereal" }
#spoon3 = { :size => "large", :color => "platinum", price: 30, :use => "digging holes" }

#puts "A #{spoon1[:size]} #{spoon1[:color]} spoon at the low price of #{spoon1[:price]} dollars. This spoon is best used for #{spoon1[:use]}."
#puts "A #{spoon2[:size]} #{spoon2[:color]} spoon at the reasonable price of #{spoon2[:price]} dollars. This spoon is best used for #{spoon2[:use]}."

class Spoon
  attr_reader :size, :color, :price, :use
  attr_writer :size, :color, :price, :use

  def initialize(input_options)
    @size = input_options[:size]
    @color = input_options[:color]
    @price = input_options[:price]
    @use = input_options[:use]
  end

  def description
    puts "This is a #{size} #{color} spoon for #{price} dollars that is best used for #{use}"
  end
end

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

class Food < Spoon
  attr_accessor :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

  def description
    puts "This is a #{size} #{color} apple for #{price} dollars that is best used for #{use}"
    puts "This product has a shelf life of #{shelf_life}"
  end
end

apple = Food.new({ size: "medium", color: "red", price: 2.00, use: "eating", shelf_life: "1 week" })
apple.description
