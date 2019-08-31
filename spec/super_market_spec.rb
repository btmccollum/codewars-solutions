require_relative '../Ruby/super_market_queue'

RSpec.describe '#queue_time' do
  describe 'it returns the longest wait_time given n number of tills' do
    it' should return 0 when there are no customers' do
      queue = []
      tills = 1
      expect(queue_time(queue, tills)).to eq(0)
    end

    it 'should always return an integer' do 
      queue = []
      tills = 1
      answer = queue_time(queue, tills)
      expect(answer.is_a?(Integer)).to be(true)
    end

    it 'should return 15 when given [1,2,3,4,5] and 1' do
      queue = [1,2,3,4,5]
      tills = 1
      expect(queue_time(queue, tills)).to be(15)
    end

    it 'should handle multiple tills correctly' do
      queue = [2,2,3,3,4,4]
      tills = 2
      expect(queue_time(queue, tills)).to be(9)
    end
  end
end