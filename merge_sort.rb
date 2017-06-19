array = [1234,1,2,3,5,1,2,12345,2111]

def merge_sort(array, result = [])
  n = array.length
  if n < 2
    return array
  else
    left_half = array[0...n / 2]
    right_half = array[n / 2..-1]
    left_sorted = merge_sort(left_half)
    right_sorted = merge_sort(right_half)
    until left_sorted.empty? || right_sorted.empty?
      if (left_sorted.first <=> right_sorted.first) == -1
        result << left_sorted.first
        left_sorted.shift
      else
        result << right_sorted.first
        right_sorted.shift
      end
    end
    (result << left_sorted << right_sorted).flatten!
    return result
  end
end

puts merge_sort(array)
