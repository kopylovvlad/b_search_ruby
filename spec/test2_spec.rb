require 'rspec'
require_relative '../script'

RSpec.describe 'Match with Array#find_index' do
  # it runs Array#find_index and match result with value
  def test_helper(array, value)
    answer = array.find_index(value)
    answer.nil? ? -1 : answer
  end

  (1..100).to_a.each do |i|
    context "array from 0 to #{i}" do
      arr = (0..i).to_a
      arr.each do |j|
        number = j
        it "can find #{number}" do
          expect(Main.b_index(arr, number)).to eq(test_helper(arr, number))
        end
      end
    end
  end
end
