require_relative '../Ruby/delete_digit'

RSpec.describe '#delete_digit' do
  it 'returns the largest number possible when deleting digits' do
    num = 789
    expect(delete_digit(num)).to eq(89)
  end
end