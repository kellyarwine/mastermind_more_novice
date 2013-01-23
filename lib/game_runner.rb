class GameRunner
	attr_accessor :turn_count, :code

	def initialize
		@turn_count = 0
		@code = SecretCodeGenerator.new
	end

	def play_turn
		@turn_count += 1
	end

	def determine_next_action
	end
end