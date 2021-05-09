
module Main
  # @param array [Array<Object>]
  # @param value [Object]
  # @return [Integer] index of element or -1
  def self.b_index(array, value)
    low = 0
    high = array.size

    while low < high
      mid = ((low+high) / 2).floor
      midval = array[mid]
      if midval < value
        low = mid+1
      elsif midval > value
        high = mid
      else
        return mid
      end
    end
    -1
  end
end
