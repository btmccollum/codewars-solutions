require_relative '../Ruby/autocomplete.rb'

describe '#autocomplete' do 
  describe 'it returns all results that start with the string passed in' do
    it 'should return ' do
      dictionary = %w[ abnormal
                       arm-wrestling
                       absolute
                       airplane
                       airport
                       amazing
                       apple
                       ball  
                    ]      
      expect(autocomplete('ai', dictionary)).to eq(%w[airplane airport])
      expect(autocomplete('a', dictionary)).to eq(%w[abnormal arm-wrestling absolute airplane airport])
    end
  end
end
