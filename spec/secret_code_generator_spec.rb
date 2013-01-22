require './lib/secret_code_generator'

describe SecretCodeGenerator do

  describe '#secret_code' do
    before  { subject.secret_code }
    
      it 'secret_code is the correct length' do
        subject.secret_code.length.should == 5
      end

      it 'secret_code is randomly generated' do
        subject.available_symbols.should_receive(:sample).exactly(5) == 5
        subject.secret_code
      end    

      it 'secret_code only contains the available symbols' do
        (subject.secret_code - subject.available_symbols).should == []
      end
  end
  
end