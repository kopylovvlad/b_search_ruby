require 'rspec'
require_relative '../script'

RSpec.describe 'Script' do
  context 'array with integers' do
    it { expect(Main.b_index([], 1)).to eq(-1) }
    it { expect(Main.b_index([1,2,3,4], 1)).to eq(0) }
    it { expect(Main.b_index([1,2,3,4], 2)).to eq(1) }
    it { expect(Main.b_index([1,2,3,4], 3)).to eq(2) }
    it { expect(Main.b_index([1,2,3,4], 4)).to eq(3) }
  end

  context 'array with similar values' do
    it { expect(Main.b_index([2,2,2], 2)).to eq(1) }
    it { expect(Main.b_index([1,2,2,2,13], 2)).to eq(2) }
  end

  context 'array with string values' do
    it do
      expect(Main.b_index(['a', 'b', 'c'], 'z')).to eq(-1)
      expect(Main.b_index(['a', 'b', 'c'], 'a')).to eq(0)
      expect(Main.b_index(['a', 'b', 'c'], 'b')).to eq(1)
      expect(Main.b_index(['a', 'b', 'c'], 'c')).to eq(2)
      expect(Main.b_index(['a', 'b', 'c'], 'z')).to eq(-1)
    end
  end
end
