#A product should be an object created from a class. 
class Product 

	attr_accessor :name, :quantity, :serial_number, :cost, :sell_price

	def initialize(name, quantity, serial_number, cost, sell_price)
		@name = name
		@quantity = quantity
		@serial_number = serial_number
		@cost = cost
		@sell_price = sell_price
	end


end 

#For Cateogories
class Category 

	attr_accessor :name, :products

	def initialize(name, products)

		@name = name
		@products = products

	end 

	def add (product)
		@products.push(product)
	end


end 

@products = [] #array that keeps all products in store

#method to create default 5 items for Fruit category
def fruit_array

	fruit = []
	
	strawberries = Product.new("Strawberry", 25, 1234, 2, 5)
	fruit.push(strawberries)
	@products.push(strawberries)

	blueberries = Product.new("Blueberry", 25, 1235, 3, 6)
	fruit.push(blueberries)
	@products.push(blueberries)

	peaches = Product.new("Peach", 25, 1236, 2, 4)
	fruit.push(peaches)
	@products.push(peaches)

	apples = Product.new("Apple", 25, 1237, 1, 3)
	fruit.push(apples)
	@products.push(apples)

	bananas = Product.new("Banana", 25, 1238, 2, 5)
	fruit.push(bananas)
	@products.push(bananas)

	return fruit
end 

@fruit = Category.new("Fruit", fruit_array) #creating new Fruit category 

#method to create default 5 items for Veggie category
def veggie_array

	veggie = []
	
	broccoli = Product.new("Broccoli", 25, 2234, 2, 5)
	veggie.push(broccoli)
	@products.push(broccoli)

	squash = Product.new("Squash", 25, 2235, 3, 6)
	veggie.push(squash)
	@products.push(squash)

	spinach = Product.new("Spinach", 25, 2236, 2, 4)
	veggie.push(spinach)
	@products.push(spinach)

	kale = Product.new("Kale", 25, 2237, 1, 3)
	veggie.push(kale)
	@products.push(kale)

	green_beans = Product.new("Green Beans", 25, 2238, 2, 5)
	veggie.push(green_beans)
	@products.push(green_beans)

	return veggie
end 

@veggie = Category.new("Vegetable", veggie_array) #creating new Veggie Category

#method to create default 5 items for Bakery category
def bakery_array

	bakery = []
	
	bread = Product.new("Bread", 25, 3234, 1, 2)
	bakery.push(bread)
	@products.push(bread)

	danish = Product.new("Danish", 25, 3235, 3, 6)
	bakery.push(danish)
	@products.push(danish)

	croissant = Product.new("Croissant", 25, 3236, 2, 4)
	bakery.push(croissant)
	@products.push(croissant)

	whole_wheat_bread = Product.new("Whole Wheat Bread", 25, 3237, 1, 3)
	bakery.push(whole_wheat_bread)
	@products.push(whole_wheat_bread)

	cookies = Product.new("Cookies", 25, 2238, 2, 3)
	bakery.push(cookies)
	@products.push(cookies)

	return bakery
end 

@bakery = Category.new("Bakery", bakery_array) #creating new bakery category 

#method to create default 5 items for Deli category
def deli_array

	deli = []
	
	turkey = Product.new("Turkey", 25, 4234, 2, 5)
	deli.push(turkey)
	@products.push(turkey)

	ham = Product.new("Ham", 25, 4235, 3, 6)
	deli.push(ham)
	@products.push(ham)

	roast_beef = Product.new("Roast Beef", 25, 4236, 2, 4)
	deli.push(roast_beef)
	@products.push(roast_beef)

	american_cheese = Product.new("American Cheese", 25, 4237, 1, 3)
	deli.push(american_cheese)
	@products.push(american_cheese)

	swiss_cheese = Product.new("Swiss Cheese", 25, 4238, 2, 5)
	deli.push(swiss_cheese)
	@products.push(swiss_cheese)

	return deli
end 


@deli = Category.new("Deli", deli_array) #create new deli category 