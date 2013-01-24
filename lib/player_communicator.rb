class PlayerCommunicator
	attr_accessor :guess, :feedback, :turn_number, :total_turns, :board_plays

	def initialize(turn_number, total_turns)
		@feedback = feedback
		@turn_number = turn_number
		@total_turns = total_turns
		@board_plays = ""
	end

	def output
    @output ||= STDOUT
  end

  def input
    @input ||= STDIN
  end

  def guess
  	output.puts "Please enter a guess:"
  	input.gets.chomp.split(//)
  end

	def display_board
		output.puts construct_board
	end

	def construct_board
		board = ""
		board << board_header
		board << board_plays
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

	def board_plays
		for i in 1..total_turns
			if i <= 9
				@board_plays << "Turn ##{i}:   |            "
			elsif i <= 99
				@board_plays << "Turn ##{i}:  |            "
			else
				@board_plays << "Turn ##{i}: |            "
			end
			@board_plays << " |            "
			@board_plays << " |\n"
			@board_plays
		end
		@board_plays
	end
	
	def board_footer
		board_footer = ""
		board_footer << "           |_____________|_____________|\n"
		board_footer << "            Select from the following \n"
		board_footer << "            symbols: b, g, o, p, r & y.\n"
	end

end

p = PlayerCommunicator.new(2, 12)
p.display_board