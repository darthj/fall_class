# ask user for a word
puts "please enter a word."
word = gets.chomp.downcase

# check to see if word begins with a vowel
pig = word.split(//)

vowels = ["a", "e", "i", "o", "u"]
first = pig[0]
if vowels.include?(first)
	pig = pig.push("w", "a", "y")
	pig = pig.join()
	puts pig

else
	pigconst = pig.shift()
	pig = pig.push(pigconst, "a", "y")
	puts pig
end