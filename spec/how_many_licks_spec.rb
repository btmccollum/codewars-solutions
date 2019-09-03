require_relative '../Ruby/how_many_licks'

RSpec.describe '#total_licks' do
  it 'correctly identifies licks/greatest challenge' do
    expect(total_licks({ "freezing temps"=>10, "clear skies"=>-2 })).to eq("It took 260 licks to get to the tootsie roll center of a tootsie pop. The toughest challenge was freezing temps.")
  end

  it 'should not identify challenges if there were none' do 
    expect(total_licks({ "happiness"=>-5, "clear skies"=>-2 })).to eq("It took 245 licks to get to the tootsie roll center of a tootsie pop.")
  end

  it 'should return base case of 252 if passed empty arguments' do 
    expect(total_licks({})).to eq("It took 252 licks to get to the tootsie roll center of a tootsie pop.")
  end
end
