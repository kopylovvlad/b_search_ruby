require 'rspec'
require_relative '../script'

# our custom Object
class MyObject
  include Comparable

  # @param number [Integer]
  def initialize(number)
    @number = number
  end

  attr_reader :number

  def <=>(object)
    if object.is_a?(self.class)
      number <=> object.number
    elsif object.is_a?(Integer)
      number <=> object
    else
      raise 'Can not compare the type'
    end
  end
end

RSpec.describe 'Custom objects test' do
  # it runs Array#find_index and match result with value
  def test_helper(array, value)
    answer = array.find_index(value)
    answer.nil? ? -1 : answer
  end

  (1..100).to_a.each do |i|
    context "array from 0 to #{i}" do
      arr = (0..i).map { |i| MyObject.new(i + 1) }
      arr.each do |obj|
        number = obj.number
        it "can find MyObject with #{number}" do
          expect(Main.b_index(arr, number)).to eq(test_helper(arr, number))
        end
      end
    end
  end
end
