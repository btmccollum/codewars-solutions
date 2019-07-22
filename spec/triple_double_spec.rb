require_relative '../Ruby/triple_double'

RSpec.describe '#triple_double' do
  describe 'returns a 1 or a 0 if a triple and double are present in two integers' do
    it 'returns a 1 when given 451999277 and 41177722899' do
      num1 = 451999277
      num2 = 41177722899
      expect(triple_double(num1, num2)).to eq(1)
    end

    it 'returns a 0 when given 1222345 and 12345' do
      num1 = 1222345 
      num2 = 12345
      expect(triple_double(num1, num2)).to eq(0)
    end

    it 'returns a 0 if one of the numbers is a 0' do
      num1 = 111222333
      num2 = 0
      expect(triple_double(num1, num2)).to eq(0)
    end
  end
end
