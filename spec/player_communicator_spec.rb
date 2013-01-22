require './lib/player_communicator'

	describe PlayerCommunicator do
		describe '#display_board' do
	    
	    before  { subject.display_board }
    
      it 'displays the board' do
        subject.display_board.should == 1000000
      end

		end
	end