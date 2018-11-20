class Team 
	attr_accessor :name, :seed
	def initialize(name, seed)
		@name = name
		@seed = seed
	end
end

# to hold our teams and for sorting
@teams = []

def menu
	puts "Welcome to the Tournament Generator.  Enter the number for your selection:"
	puts "1. Enter Teams"
	puts "2. List Teams"
	puts "3. List matchups"
	puts "0. Exit Program"

	choice = gets.chomp.to_i

	case choice
		when 1
			enter_teams
			#puts "you selected 1"
		when 2
			list_teams
			# puts "you selected 2"
		when 3
			matchups
			# puts "you selected 3"
		when 0 
			puts "Peace out, bruh"
		else
			puts "Not a valid selection. Try again."
			menu
	end
end

 def enter_teams
  	puts "Enter team names and their seed.  When finished, type in 'done' instead of team name"
  	name = ''
  	while name != 'done'
  		print "School name: "
  		name = gets.chomp
  		if name.downcase == 'done'
  			break
  		end
  		print "Seed: "
  		seed = gets.chomp
  		
		alpha = [*'a'..'z',*'A'..'Z']
			while alpha.include? seed 
		   			puts "That is not a number."
		   			print "Check your list and re-enter seed: "
		   			seed = gets.chomp
		   	end
  		
  		seed = seed.to_i

  		while seed_check(seed) #
  			puts "That seed is taken."
  			print "Check your list and re-enter seed: "
  			seed = gets.chomp.to_i
  		end

  		@teams.push(Team.new(name, seed))
  	end
  	@teams.sort! {|a,b| a.seed <=> b.seed}

  	menu
end

def seed_check(num)
	seed_exists = false
	@teams.each do |s|
		if num == s.seed
			seed_exists = true
		end
	end
	return seed_exists
end

def list_teams
	puts "Here are the Teams..."
	@teams.each do |team|
		puts "#{team.seed}. #{team.name}"
	end
	menu
end

def matchups
	temp = []
	@teams.each do |t|
		temp.push(t)
	end

	if temp.length % 2 != 0
		puts "(1) #{temp.delete_at(0).name} has a bye."
	end
	while temp.length > 0
		team1 = temp.delete_at(0)
		team2 = temp.pop
		puts "(#{team1.seed}) #{team1.name} vs. (#{team2.seed}) #{team2.name}"
	end
	menu
end

menu



















