require_relative '../Ruby/snail'

RSpec.describe '#snail' do 
  it 'should handle an empty array by returning []' do
    expect(snail( [[]] )).to eq([])
  end

  it 'should return [1, 2, 3, 6, 9, 8, 7, 4, 5] when given [[1,2,3],[4,5,6],[7,8,9]]' do
    grid = [[1,2,3],[4,5,6],[7,8,9]]
    expect(snail(grid)).to eq([1, 2, 3, 6, 9, 8, 7, 4, 5])
  end
end