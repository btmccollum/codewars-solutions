require_relative '../Ruby/men_from_boys.rb'

RSpec.describe '#men_from_boys' do
  it 'sorts by evens (asc) and odds (desc)' do
    array = [7,3,14,17]
    expect(men_from_boys(array)).to eq([14,17,7,3])
  end

  it 'handles negatives as well' do
    array = [-17,-45,-15,-33,-85,-56,-86,-30]
    expect(men_from_boys(array)).to eq([-86,-56,-30,-15,-17,-33,-45,-85])
  end

  it 'handles positives and negatives mixed' do
    array = [49,818,-282,900,928,281,-282,-1]
    expect(men_from_boys(array)).to eq([-282,818,900,928,281,49,-1])
  end
end