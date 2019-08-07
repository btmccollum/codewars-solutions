require_relative '../Ruby/max_ball'

RSpec.describe 'max_ball' do
  describe 'returns the tenth of a second where the ball hits max height' do
    it 'should return 10 when velocity is 37' do
      velocity = 37
      expect(max_ball(velocity)).to eq(10)
    end

    it 'should return 13 when velocity is 45' do
      velocity = 45
      expect(max_ball(velocity)).to eq(13)
    end
  end
end