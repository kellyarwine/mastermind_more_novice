require './lib/analyze_guess'

	describe AnalyzeGuess do
	
		describe '#???' do

			subject 					{ GameRunner.new }

      context '' do
	    	let(:guess) 		{ ["g","g","g","g","g"] }    
	    	its(:response) 	{ should == ["b","b","b","b","b"] }
    	end

		end
		
	end