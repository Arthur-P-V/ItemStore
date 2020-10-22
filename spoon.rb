require "./greetable.rb"

class Spoon
  include Greetable
  attr_accessor :size, :color, :price, :use
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
