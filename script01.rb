require 'pry'

def b_index(array, value)
  indexs = []
  vector = 1

  loop do
    # fast exit if we have only one integer in the array
    if indexs.empty? && array.size == 1
      indexs = (array[0] == value ? [0] : [-1])
      break
    end

    # check do we have filled array
    # and divide the array
    if array.size == 1
      current_index = 1
    else
      current_index = array.size / 2
    end

    # fill indexs
    if indexs.size == 0
      indexs << (current_index * vector) -1
    else
      indexs << (current_index * vector)
    end

    # check current value of array
    if array[current_index - 1] != value && array.size == 1
      indexs = [-1]
      break
    elsif array[current_index - 1] == value
      break
    end

    # do next iteration
    if array[current_index - 1] > value
      array = array[0..current_index-1]
      vector = -1
    elsif array[current_index - 1] < value
      array = array[current_index..(array.size-1)]
      vector = 1
    end
  end
  # puts indexs.inspect
  indexs.sum
end
