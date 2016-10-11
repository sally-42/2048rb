# a = [8, 8, 2, 8]
a = [nil, 2, 2, 2]
p a
# i = 3.times { |i|
# 	a[i] = "#{i}:cats"
# 	break 42 if i == 1
# }
def process(array, i, j, counter)
  # if (i...array.length).select { |i| !array[i].nil? }.empty?
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
  # array[start...array.length].each.with_index do |array[i], i|
  # for i in (start...array.length)
  # for j in (i+1...array.length)
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
      # do nothing
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
    #   end
    # end
    # puts "break"
    # 42
    p array
  end
end
puts "&"*20
p a
process(a,0,1,0)
