class FlashcardStack
	def initialize
		@stack = []
	end

	def add_flashcards(f)
		@stack.push(f)
	end

	
end
class Flashcard
	attr_accessor :definition, :term
	def initialize(definition, term)
		@definition = definition
		@term = term
	end
end