require './lib/player_communicator'

	describe PlayerCommunicator do
		describe '#display_board' do
	    
	    before  { subject.display_board }
    
      it 'displays the board' do
        subject.display_board.should == 1000000
      end

      context 'when a guess does not match the secret code, the player should be prompted for a new guess (when there are turns remaining)' do
    	end

    	context 'when a guess does not match the secret code, the response should be displayed' do
    	end

		end
	end