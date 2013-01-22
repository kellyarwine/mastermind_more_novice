class AnalyzeGuess
	attr_accessor :guess, :code

	def response
		if @guess == @code
			["b","b","b","b","b"]
		elsif @guess - @code != []
			["","","","",""]
		end
	end

end