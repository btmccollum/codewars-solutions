require_relative '../Ruby/ransom_notes.rb'

describe '#check_magazine' do
  describe 'compares the content of a magazine and note to see if the note can be made from it' do
    it 'should return yes when passed "give me one grand today night" and "give one grand today"' do
      magazine = %w[give me one grand today night]
      note = %w[give one grand today]
      expect{ check_magazine(magazine, note) }.to output('Yes').to_stdout
    end
  end
end
