# def convert(pounds)
# 	kilo = pounds/2.205
# end

# puts convert(200).round(3)

# def revert(word)
# 	split_word = word.split(//)
# 	length = split_word.length
# 	reverse = []
# 	length.times do |x|
# 		letter = split_word.pop
# 		reverse = reverse.push(letter)
# 	end
# 	reverse = reverse.join
# 	puts reverse
# end

# revert("this is a test")
# revert("Matt")


# def hash_from_array(array)
# 	brown = {}
# 	array.each_with_index do |data, index|
# 		brown[index] = data
# 	end
# 	puts brown
# end

# array = ["Matt", "Corbin", "Ralph", "Angel"]
# hash_from_array(array)

	
	puts "Give me a number"
	num1 = gets.chomp
	
	while num1.start_with?("0") || num1.include?(".")
		puts "That's not valid please give me a non zero integer."
		num1 = gets.chomp
	end
	num1 = num1.to_i
	
	puts "Please give me another non-zero integer"
	num2 = gets.chomp

	while num2.start_with?("0") || num2.include?(".")
		puts "That's not valid please give me a non zero integer."
		num2 = gets.chomp
	end
	
	num2 = num2.to_i

def remainder(num1, num2)
	modulus = num1 % num2
	quotient = num1 / num2

	puts "The answer is #{quotient} with a remainder of #{modulus}"
end

remainder(num1, num2)
