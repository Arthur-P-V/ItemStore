# puts "What are 5 of your favorite foods?"
# foods = []
# 5.times do
#   x = gets.chomp
#   foods << x
# end
# index = 0
# while index < foods.length
#   puts "#{index + 1}. I love #{foods[index]}!"
#   index = index + 1
# end

# count = 0
# 11.times do
#   puts count
#   count += 1
# end

# sam = ["Chicken Marsala", "Pizza", "Spaghetti", "Fruit Parfait", "Pancakes", "Sausage", "Steak"]
# sally = ["Spanish", "French", "German", "Latin", "Japanese"]

# if sam.length > 10 && sally.length > 5
#   puts "Sam and Sally should date!"
# else
#   puts "Sam and Sally should not date"
# end

# if sam || sally
#   puts "They should marry"
# end

first_roll = 5
second_roll = 5
total = 10
strike = false
spare = false

if first_roll == 10
  strike = true
elsif first_roll < 10
  strike = false
end

if first_roll < 10 && total == 10
  spare = true
elsif first_roll < 10 && total < 10
  spare = false
end

p strike
p spare
