require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  	spicy_foods.map { |food| food[:name] }
end
# puts get_names(spicy_foods)

def spiciest_foods(spicy_foods)
	spicy_foods.filter { |food| food[:heat_level] > 5}
end
# puts spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format:
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji.
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  	spicy_foods.map do |food|
	puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level].to_i
  end
end
# puts print_spicy_foods(spicy_foods)

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| cuisine == food[:cuisine] }
end
# puts get_spicy_food_by_cuisine(spicy_foods, "Thai")

def sort_by_heat(spicy_foods)
	spicy_foods.sort_by do |food|
		food[:heat_level]
	end
end
# puts sort_by_heat(spicy_foods)

def print_spiciest_foods(spicy_foods)
	spicy_foods.filter do |food|
		if food[:heat_level] > 5
		puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level].to_i
		end
	end
end
# puts print_spiciest_foods(spicy_foods)

# given an array of spicy foods, return an integer representing
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
	spicy_foods.sum { |food| food[:heat_level].to_i} / spicy_foods.length
end

puts average_heat_level(spicy_foods)
