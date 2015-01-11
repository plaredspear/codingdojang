require 'jolly_jumper'
require 'spec_helper'

describe 'jolly' do
  let(:jolly_jumper) { JollyJumper.new }

  describe 'valid attribute' do
    it 'has array of differences' do
      expect(jolly_jumper.array_of_differences([1,4,2,3])).to eq([3, 2, 1])
    end
  end

  context 'truthy' do
    describe '[1,4,2,3]' do
      it 'is jolly jumper' do
        expect(jolly_jumper.jolly_jumper?([1,4,2,3])).to be_truthy
      end
    end
  end

  context 'falsey' do
    describe '[1,4,2,-1,6]' do
      it 'is not jolly jumper' do
        expect(jolly_jumper.jolly_jumper?([1,4,2,-1,6])).to be_falsey
      end
    end
  end
end
