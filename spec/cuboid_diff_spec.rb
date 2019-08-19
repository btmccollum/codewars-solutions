require_relative '../Ruby/cuboid_diff'

RSpec.describe '#find_difference' do
  it 'should return diff of volume between two arrays' do 
    expect(find_difference([3, 2, 5], [1, 4, 4])).to eq(14)
    expect(find_difference([9, 7, 2], [5, 2, 2])).to eq(106)
  end
end