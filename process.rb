a = [nil, 2, 2, 2]
def process(array, i, j, counter)
  if counter > array.length
    p "hit base"
    p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
    return array
  end

  if j == array.length
    i += 1
    j = i
    counter = 0
    process(array, i, j, counter)
  end

  puts "="*20
  puts "*"*20
  puts "="*20
  puts "$"*20
  p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
  if array[i].nil?
    if array[j].nil?
      puts "do nothing, increment j"
      p "nothing: #{array[i]} == nil; #{array[j]} == nil"
      counter += 1
      process(array, i, j, counter)
    else
      # swap
      p "swap! repeat search from i: #{i}, j: #{i+1}"
      p "swap: #{array[i]} == nil; #{array[j]} != nil"
      p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
      array[i] = array[j]
      array[j] = nil
      p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
      counter = 0
      process(array, i, i+1, counter)
    end
  else
    p "#{array[i]} != nil"
    p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
    if array[j].nil?
      # incremement j
      p "do nothing, inc j"
      p "nothing: #{array[i]} != nil; #{array[j]} == nil"
      counter += 1
      process(array, i, j+1, counter)
    else
      p "i:#{i};j#{j};array[i]:#{array[i]};j#{j};array:#{array}; counter:#{counter}"
      if array[j] == array[i]
        array[i] = 2*array[i]
        array[j] = nil
        counter = 0
        process(array, i+1, j+1, counter)
      else
        puts "the current cell is blocked increment i"
        i += 1
        counter = 0
        process(array, i, i+1,counter)
      end
    end
  end
end

p a
ap = process(a,0,1,0)
p a
