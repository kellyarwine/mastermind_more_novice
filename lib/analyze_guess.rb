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
				code_symbol_index = @code.index(@guess[i])
				code[code_symbol_index] = "X"
			elsif (@guess[i].split(//) - @code) == []
				@response << "w"
				code_symbol_index = @code.index(@guess[i])
				code[code_symbol_index] = "X"
			else
				@response << ""
			end
		end
		@response
	end

end