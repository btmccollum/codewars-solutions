require_relative '../Ruby/the_wave'

RSpec.describe '#wave' do
  describe 'it takes a string and returns an array of wave variants from start to finish' do
    it 'handles words with spaces in or around it' do
      expect(wave(" gap ")).to eq([" Gap ", " gAp ", " gaP "])
    end

    it 'returns [] if passed nothing as an argument' do
      expect(wave("")).to eq([])
    end

    it 'should handle multiple words' do
      expect(wave("two words")).to eq(["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
    end
  end
end
