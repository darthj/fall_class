class Vehicle
	attr_accessor :make, :year, :color, :model

	def initialize(make, year, color, model)
		@make = make
		@year = year
		@color = color
		@model = model
	end

	def accelerate

	end

	def decelerate

	end

	def start

	end

	def shift

	end

	def trunk

	end


end





































# class Product

# 	def initialize(product_name, brand, quantity)
# 		@product_name = product_name
# 		@brand = brand
# 		@quantity = quantity
# 	end

# 	def add_inventory
# 		@quantity += 1
# 	end

# 	def sub_inventory
# 		@quantity -=1
# 	end

# 	def sound
# 		if @species == 'dog'
# 			puts "woof woof"
# 		elsif @species == "cat"
# 			puts "meow"
# 		else
# 			puts "what does the fox say?"
# 		end
# 	end		

# end
class Team

	attr_accessor :name, :seed

	def initialize(name, seed)
		@name = name
		@seed = seed
	end
end

team1 = Team.new("Wisconsin", 2)
team2 = Team.new("Michigan", 3)
team3 = Team.new("Texas", 1)
team4 = Team.new("Stanford", 4)

teams = [team1, team2, team3, team4]
length = teams.length  # 4


seed1 = teams[0].seed	# 2
seed3 = teams[2].seed 	# 1
seed2 = teams[1].seed 	# 3
seed4 = teams[3].seed 	# 4

puts seed1
puts length

puts "#{team3.name} vs #{team4.name}"
puts "#{team1.name}"




