class Vehicle
  attr_accessor :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :fuel, :make, :model

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight, :gearshift

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
    @gearshift = input_options[:gearshift]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new({ speed: 0, direction: "north", type: "mountain", weight: 29, gearshift: "21 speed" })
car = Car.new({ speed: 0, direction: "north", fuel: "gasoline", make: "Toyota", model: "Corolla" })
car.honk_horn
bike.ring_bell
puts car.make
puts car.fuel
puts bike.gearshift
puts bike.weight
car.direction = "south"
puts car.direction
