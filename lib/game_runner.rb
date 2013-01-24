require './player_communicator'
require './secret_code_generator'

class GameRunner
	attr_accessor :turn_count

	def initialize
		@turn_count = 0
	end

	def play_turn
		@turn_count += 1
	end

	def determine_next_action
	end
end

g = GameRunner.new
p = PlayerCommunicator.new(["g","g","g","g","g"], ["w","w","w","w","w"], 1, 12)
s = SecretCodeGenerator.new
p.guess
puts p.display_board
p.guess
puts p.display_board