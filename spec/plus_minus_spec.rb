require_relative '../Ruby/plus_minus'

describe '#plus_minus' do
  describe 'it returns the ratio of positive numbers to arr length, negative and zero' do
    it 'returns .500000, .333333 and .166667 when passed -4 3 -9 0 4 1' do
      numbers = [-4, 3, -9, 0, 4, 1]
      expect{ plus_minus(numbers) }.to output("0.5\n0.333333\n0.166667\n").to_stdout
    end
  end
end