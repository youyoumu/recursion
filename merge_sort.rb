def merge_sort(the_array)
  if the_array.length == 1
    return the_array
  else
    left, right = the_array.each_slice((the_array.length/2.0).round).to_a
    left = merge_sort(left)
    right = merge_sort(right)
    new_array = []
    i = 0
    j = 0

    while new_array.length != left.length + right.length

      if left[i] == nil
        new_array.push(right[j])
        j += 1
      elsif right[j] == nil
        new_array.push(left[i])
        i += 1
      else
        if left[i] < right[j]
          new_array.push(left[i])
          i += 1
        else
          new_array.push(right[j])
          j += 1
        end
      end

    end
    return new_array
  end
end

def random_numbers
  Array.new(20) { rand(1..100) }
end

a = random_numbers
p a
p merge_sort(a)
