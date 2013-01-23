class AnalyzeGuess
	
	attr_accessor :guess, :code

	def initialize(code, guess)
		@guess = guess
		@code = code
	end

	def response
		if @guess == @code
			["b","b","b","b","b"]
		elsif (@guess - @code) != []
			["","","","",""]
		elsif (@guess - @code) == []
			["w","w","w","w","w"]
		end
	end

end