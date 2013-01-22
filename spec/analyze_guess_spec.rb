require './lib/analyze_guess'

	describe AnalyzeGuess do
	
		describe '#response' do
	
	    before  { subject.response }

      let(:code) { ["g","g","g","g","g"] }
    	let(:guess) { ["g","g","g","g","g"] }    
    	its(:response) { should == ["b","b","b","b","b"] }

      let(:code) { ["r","r","r","r","r"] }
    	let(:guess) { ["g","g","g","g","g"] }
    	its(:response) { should == ["","","","",""] }

		end
	end