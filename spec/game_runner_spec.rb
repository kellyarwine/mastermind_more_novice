require './lib/game_runner'

	describe GameRunner do
	
		describe '#???' do

			subject 						{ GameRunner.new }

    	context 'when a game is started, the turn_count should be set at zero' do
    		its(:turn_count) 	{ should == 0 }
    	end

      context 'when a game is started, a new secret code should be generated' do
      	its(:code) 	{ should_not == nil }
    	end

    	context 'when a game is started, a new board should be printed' do
    	end

    	context 'when a game is started, the player should be prompted for a guess' do
    	end

      context 'when a turn is played, turn_count should increase by 1' do  
	    	before						{ subject.play_turn }
	    	its(:turn_count) 	{ should == 1 }
    	end

    	context 'when there are no turns remaining, the game should end' do
    	end

		end
		
	end