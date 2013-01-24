class PlayerCommunicator
	attr_accessor :guess, :feedback, :turn_number, :total_turns, :board_plays, :guess_history

	def initialize(total_turns)
		@feedback = feedback
		@turn_number = 1
		@total_turns = total_turns
		@guess_history = []
	end

	def output
    @output ||= STDOUT
  end

  def input
    @input ||= STDIN
  end

  def guess
  	output.puts "Please enter a guess:"
  	@guess = input.gets.chomp.split(//)
  	store_guess_history
  end

	def store_guess_history
		@guess_history << @guess
	end

	def display_board
		output.puts construct_board
	end

	def construct_board
		board = ""
		board << board_header
		board << board_turns
		board << board_footer
	end

	def board_header
		board_header = ""
		board_header <<	"            ___________________________\n"
		board_header <<	"           |                           |\n"
		board_header <<	"           |         Mastermind        |\n"
		board_header <<	"           |___________________________|\n"
		board_header <<	"           |    Guess    |  Feedback   |\n"
		board_header <<	"           |_____________|_____________|\n"
		board_header
	end

	def board_turns
		board_turns = ""
		for i in 1..@total_turns
			board_turns << "Turn ##{i}:"
			if i <= 9
				board_turns << "   "
			elsif i <= 99
				board_turns << "  "
			else
				board_turns << " "
			end
			board_turns << "|  "
			if i < @turn_number
				board_turns << board_turn_played(@guess_history[i-1])
			else
				board_turns << board_turn_unplayed
			end
			board_turns << " |\n"
		end
		board_turns
	end
	
	def board_turn_played(guess)
		board_input_output = ""
		guess.each { |symbol| board_input_output << symbol + " " }
		board_input_output << " |  "
		guess.each { |symbol| board_input_output << symbol + " " }
		board_input_output
	end

	def board_turn_unplayed
		"           |            "
	end

	def board_footer
		board_footer = ""
		board_footer << "           |_____________|_____________|\n"
		board_footer << "            Select from the following \n"
		board_footer << "            symbols: b, g, o, p, r & y.\n"
	end

end

p = PlayerCommunicator.new(3)
p.display_board

for i in 1..3
	p.guess
	p.turn_number += 1
	p.display_board
end