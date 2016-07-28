require 'pry'
class FlashcardStack
	attr_reader :stack
	def initialize
		@stack = []
	end

	def add_flashcards(f)
		@stack.push(f)
	end

	def play_game
		i = 0
		while i < 39
			puts "Definition: ", @stack[i].definition
			puts "Guess: "
			answer = gets.chomp
			if answer == @stack[i].term
				puts "Correct!"
			else 
				puts "Nope! Try Again."
				puts "Guess: "
				answer = gets.chomp
				if answer == @stack[i].term
					puts "Correct!"
				else 
					puts "Nope! Try Again."
					puts "Guess: "
					answer = gets.chomp
					if answer == @stack[i].term
						puts "Correct!"
					else 
						puts "Nope! Try Again."
						puts "Guess: "
						answer = gets.chomp
					end
				end
			end
			i+=1
		end
	end
end
class Flashcard
	attr_accessor :definition, :term
	def initialize(definition, term)
		@definition = definition
		@term = term
	end
end