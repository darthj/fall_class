# ask for score from user
puts "Please enter your grade."
grade = gets.chomp.to_i

# assign letter grade based on score

# 100-90 A
if grade >=90 && grade <=100
	puts "Good job you got an A!"
# # 89-80 B
elsif grade >=80 && grade < 90
	puts "DEcent effort - B"
# # 79-70 C
elsif grade >=70 && grade < 80
	puts "Meh C"
# # 69-60 D
elsif grade >= 60 && grade < 70
	puts "You need to study -D"
# # > 60 F
elsif grade < 60
	puts "See me after class - F"
# can't be over a 100
else 
	puts "That's not a valid score."
end


	

