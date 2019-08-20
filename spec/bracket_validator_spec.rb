require_relative '../Ruby/bracket_validator'

RSpec.describe '#valid?' do
  describe 'it checks if brackets/braces/parentheses are properly nested' do
    it 'should handle short code' do    
      expect(valid?('()')).to eq(true)
    end
  
    it 'should handle longer, nested code' do
      expect(valid?('([]{[]})[]{{}()}')).to eq(true)
    end

    it 'should correctly identify if things arent properly nested' do
      expect(valid?('([)]')).to eq(false)
    end
  
    it 'should correctly handle mismatched openers' do
      expect(valid?('([][]}')).to eq(false)
    end

    it 'should handle missing closer and/or openers' do
      expect(valid?('[[]()')).to eq(false)
      expect(valid?('[]())')).to eq(false)
    end

    it 'should propery handle empty strings' do
      expect(valid?('')).to eq(true)
    end
  end
end
