require_relative '../Ruby/space_map'

RSpec.describe '#find_spaceship' do
  it 'should be able to traverse 2d array to find the spaceship' do
    expect(find_spaceship("..\nX.")).to eq([0,0])
  end

  it 'should identify if the ship is lost' do
    expect(find_spaceship("..\n..")).to eq("Spaceship lost forever.")
  end
end
