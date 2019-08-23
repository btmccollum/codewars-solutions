require_relative '../Ruby/two_sum'

RSpec.describe '#two_sum' do
  describe 'it returns the indices of two nums that equal target provided' do
    it 'should handle a smaller array' do 
      array = [2,7,11,15]
      target = 9
      expect(two_sum(array, target)).to eq([0,1])
    end

    it 'should handle the smallest possible arary' do 
      array = [1,2]
      target = 3
      expect(two_sum(array, target)).to eq([0,1])
    end

    it 'should be able to handle duplicates in array' do
      array = [4,1,3,3,7]
      target = 6
      expect(two_sum(array, target)).to eq([2,3])
    end
  end
end