require_relative './script'
require 'benchmark'

# we will create an array with 50_000 numbers
i = 50_000
puts "test an array from 0 to #{i}"
arr = (0..i).to_a

Benchmark.bm do |x|
  # benchmark for `Array#find_index`
  x.report('standard find_index') do
    arr.each { |number| arr.find_index(number) }
  end

  # benchmark for our custom function
  x.report('my b_index') do
    arr.each { |number| Main.b_index(arr, number) }
  end
end
