require_relative '../Ruby/cloud_jumping'

describe '#jumping_on_clouds' do
  describe 'should return the shortest number of jump to reach the end without hitting a thunderhead (binary 1)' do
    it 'Should return 3 when given [0, 0, 0, 0, 1, 0]' do
      expect(jumping_on_clouds([0, 0, 0, 0, 1, 0])).to eql(3)
    end
  end
end