array = [4, "jim", "carol", 5]

array[2]
array.pop
array.unshift('bob')
array.shift
array.length 
array.delete('jim')
array.reverse

array.each do |x|
	puts x
end





corbin = {}
corbin = Hash.new()

#array = []
#array = Array.new()

corbin['name'] = "Corbin"
 puts corbin

 class Student
 	attr_accessor :name, :age, :grade

 	def initialize(name,age,grade)
 		@name = name
 		@age = age
 		@grade = grade
 	end

end


ralph = Student.new("Ralph", 25, "PG")

ralph.name







