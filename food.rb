require "./spoon.rb"

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