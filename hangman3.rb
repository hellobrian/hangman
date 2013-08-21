# hangman

# What do we start with? 
# Don't start with the whole problem. 
# Start small and grow the software. 
# Divide it up into smaller problems doing the first chunk first. 

puts "* * * * * * * * * * * * * * * * * * * * * * * * * *"
puts "*                 H A N G M A N                   *"
puts "* * * * * * * * * * * * * * * * * * * * * * * * * *"                                                

class Game # classes are behavior AND data
	def play_game # the coordinator tells you how to play hangman
		get_a_word
		hide_the_word
		while @word != @user_word
			guess_the_word
			match_the_letter
		end
	end

	def get_a_word
		@word = "victory" 
	end

	def hide_the_word
		@user_word = @word.gsub(/\w/, "_") # OR @user_word = word.gsub(/[a-zA-Z]*/, "_") => look for upcase, lowcase, and asterik?
		puts @user_word
	end

	def guess_the_word
		puts "\n"
		puts "* * * Guess a letter * * *"
		@input = gets.chomp
	end

	def match_the_letter
		index = 0
		@word.each_char do |l|
			# puts "input: #{@input}\tletter: #{l}" # <= this is how you debug
			if l == @input
				# puts "in if statement" 
				@user_word[index] = @input
			end
			index += 1
		end
		puts @user_word
	end
end

game = Game.new
game.play_game





