class SecretCodeGenerator

	def secret_code
		code = []
		5.times do
			code << available_symbols.sample
		end
		code
	end

	def available_symbols
		["b", "g", "r", "y", "p", "o"]
	end

end