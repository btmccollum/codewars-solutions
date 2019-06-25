require_relative '../Ruby/persistent_bugger'

describe "persistent bugger" do
  describe "takes in a positive num and returns its multiplicative persistence" do
    it 'returns 3 when passed 39' do
      expect(persistence(39)).to eql(3)
    end

    it 'returns 4 when passed 999' do
      expect(persistence(999)).to eql(4)
    end

    it 'returns 0 when passed a single digit number' do
      expect(persistence(9)).to eql(0) 
    end

    it 'raises an exception when passed a negative number' do
      expect{ persistence(-2) }.to raise_error(RuntimeError, "Argument must be a positive number.")
    end

    it 'raises an exception when passed a value that is not an Integer' do 
      expect{ persistence("Shoji") }.to raise_error(RuntimeError, "Argument must be a positive number.")
    end
  end
end