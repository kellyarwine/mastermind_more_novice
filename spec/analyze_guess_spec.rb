require './lib/analyze_guess'

	describe AnalyzeGuess do
		describe '#response' do
	    before  { subject.response }
    
      it 'returns ["b","b","b","b","b"] when the guess matches the code' do
        subject.response.should == ["b","b","b","b","b"]
      end

      it 'returns ["","","","",""] when the no symbols in the guess match the code' do
        subject.response.should == ["","","","",""]
      end

		end
	end