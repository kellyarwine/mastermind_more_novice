require './lib/analyze_guess'

	describe AnalyzeGuess do
	
		describe '#response' do

			subject 				{ AnalyzeGuess.new(code, guess) }
	    before  				{ subject.response }

      context 'when code == guess' do
	      let(:code) 			{ ["g","g","g","g","g"] }
	    	let(:guess) 		{ ["g","g","g","g","g"] }    
	    	its(:response) 	{ should == ["b","b","b","b","b"] }
    	end

	    context 'when whole code != whole guess' do
	      let(:code) 			{ ["r","r","r","r","r"] }
	    	let(:guess) 		{ ["g","g","g","g","g"] }    
	    	its(:response) 	{ should == ["","","","",""] }
	    end

	    context 'when whole code is a near match to whole guess' do
	      let(:code) 			{ ["g","g","y","r","r"] }
	    	let(:guess) 		{ ["r","r","g","g","y"] }    
	    	its(:response) 	{ should == ["w","w","w","w","w"] }
	    end

	    context 'when the symbol in the guess == the same positioned symbol in the code' do
	      let(:code) 			{ ["g","y","y","y","y"] }
	    	let(:guess) 		{ ["g","r","r","r","r"] }    
	    	its(:response) 	{ should == ["b","","","",""] }
	    end

		end
	end