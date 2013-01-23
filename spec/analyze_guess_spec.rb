require './lib/analyze_guess'

	describe AnalyzeGuess do
	
		describe '#response' do

			subject 					{ AnalyzeGuess.new(code, guess) }

      context 'when guess has all matched symbols' do
	      let(:code) 			{ ["g","g","g","g","g"] }
	    	let(:guess) 		{ ["g","g","g","g","g"] }    
	    	its(:response) 	{ should == ["b","b","b","b","b"] }
    	end

	    context 'when guess has 2 matched symbols' do
	      let(:code) 			{ ["g","y","y","y","y"] }
	    	let(:guess) 		{ ["g","y","r","r","r"] }    
	    	its(:response) 	{ should == ["b","b","","",""] }
	    end

	    context 'when guess has 1 matched symbol' do
	      let(:code) 			{ ["g","y","y","y","y"] }
	    	let(:guess) 		{ ["g","r","r","r","r"] }    
	    	its(:response) 	{ should == ["b","","","",""] }
	    end

	    context 'when guess has all near matched symbols' do
	      let(:code) 			{ ["g","g","y","r","r"] }
	    	let(:guess) 		{ ["r","r","g","g","y"] }    
	    	its(:response) 	{ should == ["w","w","w","w","w"] }
	    end

	    context 'when guess has 2 near matched symbols' do
	      let(:code) 			{ ["g","g","y","r","r"] }
	    	let(:guess) 		{ ["p","p","g","g","p"] }    
	    	its(:response) 	{ should == ["","","w","w",""] }
	    end	    

	    context 'when guess has 1 near matched symbol' do
	      let(:code) 			{ ["g","g","y","r","r"] }
	    	let(:guess) 		{ ["r","b","b","b","b"] }    
	    	its(:response) 	{ should == ["w","","","",""] }
	    end

	    context 'when guess has all unmatched symbols' do
	      let(:code) 			{ ["r","r","r","r","r"] }
	    	let(:guess) 		{ ["g","g","g","g","g"] }    
	    	its(:response) 	{ should == ["","","","",""] }
	    end

	    context 'when guess has a mixture of unmatched, matched and near matched symbols' do
	      let(:code) 			{ ["g","r","y","o","o"] }
	    	let(:guess) 		{ ["g","y","r","p","p"] }    
	    	its(:response) 	{ should == ["b","w","w","",""] }
	    end

	    context 'when guess has more duplicate symbols than in code' do
	      let(:code) 			{ ["p","g","y","o","g"] }
	    	let(:guess) 		{ ["g","y","g","g","p"] }    
	    	its(:response) 	{ should == ["w","w","w","","w"] }
	    end
		
		end
		
	end