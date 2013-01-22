class PlayerCommunicator
	attr_accessor :guess

	def display_board
		print  " ________________________	\n"
		print ("|                        |\n" * 50)
		print  "|________________________|"
		print "/n"
	end

	def request_guess
		 puts "Enter your first guess:"
		 @guess = gets.chomp
	end

end