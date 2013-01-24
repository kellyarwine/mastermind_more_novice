require './lib/player_communicator'

	describe PlayerCommunicator do
		describe '#display_board' do
			let(:subject) 		{ PlayerCommunicator.new(turn_number, total_turns) }
	    let(:guess) 			{ ["b","b","b","b","b"] }
	    let(:feedback) 		{ ["w","w","w","w","w"] }
	    let(:turn_number) { 0 }
	    let(:total_turns) { 12 }

		  context "input" do
		    it "prompts for guess" do
		      subject.input.stub!(:gets) { "rrrrr\n" }
		      subject.guess.should == ["r","r","r","r","r"]
		    end
		  end
    
      it 'displays an empty gameboard' do
      	subject.input.stub!(:gets) { "rrrrr\n" }
      	subject.output.should_receive(:puts).and_return(String)
      	subject.display_board
      end

      #displays >1 guesses and feedbacks
      #need to test displaying losing message
      #need to test displaying winning message


		end
	end