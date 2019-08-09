require_relative '../Ruby/bouncing_ball'

RSpec.describe '#bouncing_ball' do
  it 'returns -1 if height is less than or equal to 0' do 
    expect(bouncing_ball(0, 0, 0)).to eq(-1)
    expect(bouncing_ball(-1, 0, 0)).to eq(-1)
  end

  it 'returns -1 if bounce isn\'t greater than 0 and less than 1' do
    expect(bouncing_ball(1, -1, 0)).to eq(-1)
    expect(bouncing_ball(1, 2, 0)).to eq(-1)
  end

  it 'returns -1 if widown is greater than height' do
    expect(bouncing_ball(1, 0.5, 2)).to eq(-1)
  end

  it 'returns 3 when given height 3, bounce 0.66, window 1.5' do
    expect(bouncing_ball(3, 0.66, 1.5)).to eq(3)
  end

  it 'returns 15 when given height 30, bounce 0.66, window 1.5' do
    expect(bouncing_ball(30, 0.66, 1.5)).to eq(15)
  end

  it 'returns 21 when given height 30, bounnce 0.75, window 1.5' do
    expect(bouncing_ball(30, 0.75, 1.5)).to eq(21)
  end

  it 'returns -1 when given -5, 0.66, 1.5' do
    expect(bouncing_ball(-5, 0.66, 1.5)).to eq(-1)
  end

  it 'returns -1 when given 40, 1, 10' do
    expect(bouncing_ball(40, 1, 10)).to eq(-1)
  end

  it 'returns -1 when given -5, 0.66, 1.5' do
    expect(bouncing_ball(-5, 0.66, 1.5)).to eq(-1)
  end

  it 'returns 1 when given 2, 0.5, 1' do
    expect(bouncing_ball(2, 0.5, 1)).to eq(1)
  end
end