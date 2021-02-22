require 'pry'

def b_index(array, value)
  indexs = []
  vector = 1
  left_index = 0
  right_index = array.size - 1

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
      #1 current_index = array.size / 2
      current_index = (right_index - left_index + 1) / 2
      # TODO: how to ?
    end

    # fill indexs
    if indexs.size == 0
      indexs << (current_index * vector) - 1
    else
      indexs << (current_index * vector)
    end

    # check current value of array
    #1 if array[current_index - 1] != value && array.size == 1
    # if only one element
    if array[current_index - 1] != value && left_index == right_index
      indexs = [-1]
      break
    elsif array[current_index - 1] == value
      break
    end

    # do next iteration
    if array[current_index - 1] > value
      #1 array = array[left_index..]
      left_index = left_index
      right_index = current_index-1
      vector = -1
    elsif array[current_index - 1] < value
      #1 array = array[current_index..right_index]
      left_index = current_index
      right_index = right_index
      vector = 1
    end
  end
  # puts indexs.inspect
  indexs.sum
end
