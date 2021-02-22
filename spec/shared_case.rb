require 'rspec'

RSpec.shared_examples 'main_example' do

  it do
    # expect(b_index([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3)).to eq(2)
  end

  it { expect(b_index([1], -1)).to eq(-1) }
  it { expect(b_index([1], 1)).to eq(0) }
  it { expect(b_index([1], 2)).to eq(-1) }

  it { expect(b_index([1, 2], -10)).to eq(-1) }
  it { expect(b_index([1, 2], 1)).to eq(0) }
  it { expect(b_index([1, 2], 2)).to eq(1) }
  it { expect(b_index([1, 2], 20)).to eq(-1) }

  it { expect(b_index([1, 2, 3], -10)).to eq(-1) }
  it { expect(b_index([1, 2, 3], 1)).to eq(0) }
  it { expect(b_index([1, 2, 3], 2)).to eq(1) }
  it { expect(b_index([1, 2, 3], 3)).to eq(2) }
  it { expect(b_index([1, 2, 3], 30)).to eq(-1) }

  it { expect(b_index([1,2,3,4], -1)).to eq(-1) }
  it { expect(b_index([1,2,3,4], 1)).to eq(0) }
  it { expect(b_index([1,2,3,4], 2)).to eq(1) }
  it { expect(b_index([1,2,3,4], 3)).to eq(2) }
  it { expect(b_index([1,2,3,4], 4)).to eq(3) }
  it { expect(b_index([1,2,3,4], 5)).to eq(-1) }

  it { expect(b_index([1,2,3,4,5], -11)).to eq(-1) }
  it { expect(b_index([1,2,3,4,5], 1)).to eq(0) }
  it { expect(b_index([1,2,3,4,5], 2)).to eq(1) }
  it { expect(b_index([1,2,3,4,5], 3)).to eq(2) }
  it { expect(b_index([1,2,3,4,5], 4)).to eq(3) }
  it { expect(b_index([1,2,3,4,5], 5)).to eq(4) }
  it { expect(b_index([1,2,3,4,5], 6)).to eq(-1) }

  it { expect(b_index([1,2,3,4,5,6], -11)).to eq(-1) }
  it { expect(b_index([1,2,3,4,5,6], 1)).to eq(0) }
  it { expect(b_index([1,2,3,4,5,6], 2)).to eq(1) }
  it { expect(b_index([1,2,3,4,5,6], 3)).to eq(2) }
  it { expect(b_index([1,2,3,4,5,6], 4)).to eq(3) }
  it { expect(b_index([1,2,3,4,5,6], 5)).to eq(4) }
  it { expect(b_index([1,2,3,4,5,6], 6)).to eq(5) }
  it { expect(b_index([1,2,3,4,5,6], 10)).to eq(-1) }

  # it { expect(b_index([3,4,5], 2)).to eq(-1) }
  # it { expect(b_index([3,4,5], 3)).to eq(0) }
  # it { expect(b_index([3,4,5], 4)).to eq(1) }
  # it { expect(b_index([3,4,5], 5)).to eq(2) }
  # it { expect(b_index([3,4,5], 20)).to eq(-1) }

  # it { expect(b_index([4], 3)).to eq(-1) }
  # it { expect(b_index([4], 4)).to eq(0) }

  # it { expect(b_index([-10,-1,10], -20)).to eq(-1) }
  # it { expect(b_index([-10,-1,10], -9)).to eq(-1) }
  # it { expect(b_index([-10,-1,10], -10)).to eq(0) }
  # it { expect(b_index([-10,-1,10], -1)).to eq(1) }
  # it { expect(b_index([-10,-1,10], 10)).to eq(2) }

  # it { expect(b_index([1,2,3,4,10], 10)).to eq(4) }
end
