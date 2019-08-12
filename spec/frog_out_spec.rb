require_relative '../Ruby/frog_out'

RSpec.describe '#solution' do
  describe 'determines # of steps to escape array' do
    it 'returns 4 when given [1, 2, 2, -1]' do 
      expect(solution([1, 2, 2, -1])).to eq(4)
    end

    it 'returns 3 when given [1, 2, 1, 5]' do
      expect(solution([1, 2, 1, 5])).to eq(3)
    end

    it 'returns -1 when given [1, -1]' do
      expect(solution([1, -1])).to eq(-1)
    end
  end
end
