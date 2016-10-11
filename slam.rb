def slam(array, i, j, counter)
  if counter > array.length
    return array
  end
  if j == array.length
    i += 1
    j = i
    counter = 0
    slam(array, i, j, counter)
  end
  if array[i].nil?
    if array[j].nil?
      counter += 1
      slam(array, i, j, counter)
    else
      # swap
      array[i] = array[j]
      array[j] = nil
      counter = 0
      slam(array, i, i+1, counter)
    end
  else
    if array[j].nil?
      # incremement j
      counter += 1
      slam(array, i, j+1, counter)
    else
      if array[j] == array[i]
        array[i] = 2*array[i]
        array[j] = nil
        counter = 0
        slam(array, i+1, j+1, counter)
      else
        i += 1
        counter = 0
        slam(array, i, i+1,counter)
      end
    end
  end
end
