require_relative 'grocery'

## Welcome/Home Screen
def welcome_screen
	puts "Welcome to Tech Talent Store"
	puts "Please choose from the following:"
	puts "-----------------------"
	puts "1. View Categories"
	puts "2. View an Individual Product"
	puts "3. Change the Quantity of a Product"
	puts "4. Add Products to Any Category"
	puts "5. Done"

	choice = gets.chomp.to_i

	case choice
		when 1
			choose_category

		when 2
			view_product

		when 3
			change_quant

		when 4 
			add_product
		when 5
			
	end

end 

## Screen to Choose Categories
def choose_category

	puts "Please choose from the following Categories:"
	puts "-----------------------"
	puts "1. Fruit"
	puts "2. Vegetable"
	puts "3. Bakery"
	puts "4. Deli"

	choice = gets.chomp.to_i 

	case choice 
		when 1
			@fruit.products.each do |fruit|
				puts "Name: #{fruit.name}, Quantity: #{fruit.quantity}, Serial Number = #{fruit.serial_number}, Cost = #{fruit.cost}, Sell Price = #{fruit.sell_price}"
			end

		when 2
			@veggie.products.each do |veggie|
				puts "Name: #{veggie.name}, Quantity: #{veggie.quantity}, Serial Number = #{veggie.serial_number}, Cost = #{veggie.cost}, Sell Price = #{veggie.sell_price}"
			end

		when 3
			@bakery.products.each do |pastry|
				puts "Name: #{pastry.name}, Quantity: #{pastry.quantity}, Serial Number = #{pastry.serial_number}, Cost = #{pastry.cost}, Sell Price = #{pastry.sell_price}"
			end

		when 4
			@deli.products.each do |meat| 
				puts "Name: #{meat.name}, Quantity: #{meat.quantity}, Serial Number = #{meat.serial_number}, Cost = #{meat.cost}, Sell Price = #{meat.sell_price}"
			end 
			
	end

	welcome_screen
end 

def view_product
	puts "What is the name of the product?"
	item = gets.chomp.downcase

	@products.each do |product|
		if product.name.downcase == item
			puts "Name: #{product.name}, Quantity: #{product.quantity}, Serial Number = #{product.serial_number}, Cost = #{product.cost}, Sell Price = #{product.sell_price}"
		end 
	end

	welcome_screen
end

def change_quant

	puts "What is the name of the product?"
	item = gets.chomp.downcase

	puts "What is the new quantity?"
	quantity = gets.chomp.to_i

	@products.each do |product|
		if product.name.downcase == item
			product.quantity = quantity
			puts "New Quantity: #{product.quantity}"
		end 
	end

	welcome_screen
end


##Add a new Product to a Category 
def add_product

	puts "What is the name of the product?"
	name = gets.chomp.downcase

	puts "How many #{name} are do you have?"
	quantity = gets.chomp.to_i

	puts "What is the serial number?"
	serial_number = gets.chomp.to_i

	puts "Which category does it belong to?"
	puts "-----------------------"
	puts "1. Fruit"
	puts "2. Vegetable"
	puts "3. Bakery"
	puts "4. Deli"
	category = gets.chomp.to_i

	puts "How much does it cost?"
	cost = gets.chomp.to_f

	puts "What is the sell price?"
	sell_price = gets.chomp.to_f 


	product = Product.new(name, quantity, serial_number, cost, sell_price)

	case category
		when 1
			@products.add(product)
			@fruit.add(product)
		when 2 
			@products.add(product)
			@veggie.add(product)
		when 3
			@products.add(product)
			@bakery.add(product)
		when 4
			@product.add(product)
			@deli.add(product)
 
	end 

		welcome_screen
end 

welcome_screen