require_relative '../Ruby/no_boring_zeros'

RSpec.describe '#no_boring_zeros' do
  it 'should remove all trailing zeros from a given integer' do
    expect(no_boring_zeros(1450)).to eq(145)
  end

  it 'should return 0 if passed 0' do
    expect(no_boring_zeros(0)).to eq(0)
  end
end
