puts "Give me a number"
num1 = gets.chomp

while num1.start_with?("0") || num1.include?(".")
		puts "That's not valid please give me a non zero integer."
		num1 = gets.chomp
end


num1 = num1.to_i

puts num1

 