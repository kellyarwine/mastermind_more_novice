class AnalyzeGuess

	def response
		if @guess == @code
			["b","b","b","b","b"]
		elsif (@guess - @code).length == 5
			["","","","",""]
		end
	end
	
end