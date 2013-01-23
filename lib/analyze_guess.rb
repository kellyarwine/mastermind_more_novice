class AnalyzeGuess

	attr_accessor :guess, :code

	def initialize(code, guess)
		@guess = guess
		@code = code
	end

	def response
		@response = []
		for i in 0..guess.length - 1
			if @guess[i] == @code[i]
				@response << "b"
			elsif (@guess - @code) != []
				@response << ""
			else
				@response << "w"
			end
		end
		@response
	end

end