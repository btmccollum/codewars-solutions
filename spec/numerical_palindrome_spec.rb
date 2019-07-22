require_relative '../Ruby/numerical_palindrome'

RSpec.describe '#palindrome' do
  describe 'it verifies whether or not a number is a numerical palindrome' do
    it 'returns 282 when passed 281' do 
      expect(palindrome(281)).to eq(282)
    end

    it 'returns "Not valid" if passed a non-integer' do
      expect(palindrome("ABBA")).to eq("Not valid")
    end

    it 'returns 767 when passed 769' do
      expect(palindrome(769)).to eq(767)
    end
  end
end