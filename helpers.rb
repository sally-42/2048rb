# a = [
#   ['00', '01', '02', '03'],
#   ['10', '11', '12', '13'],
#   ['20', '21', '22', '23'],
#   ['30', '31', '32', '33'],
# ]

# todo: split up presentation, rotation, and hitting helpers
def display(board)
  board.each do |row|
    row.each do |cell|
      if cell.nil?
        print "*\t"
      else
        print "#{cell}\t"
      end
    end
    print "\n\n"
  end
end

# returns a copy of array
def rotate_90(array)
  a = array.map(&:clone)
  a.transpose.map { |e| e.reverse }
end

# iterative
def rotate_90xi(array, n)
  rotate_num = n % 4
  tmp_array = array
  rotate_num.times do
    tmp_array = rotate_90(tmp_array)
  end
  tmp_array
end

# recursive
def rotate_90x(array, n)
  if n == 0
    return array
  else
    rotate_90x(rotate_90(array), n-1)
  end
end

puts "Rotate 0*"
puts "90="*26
display(a)
puts "90x="*26
display(rotate_90x(a,0))

puts "Rotate 90*"
puts "90x="*26
display(rotate_90(a))
puts "90x="*26
display(rotate_90x(a,1))

puts "Rotate 180*"
puts "90="*26
display(rotate_90(rotate_90(a)))
puts "90x="*26
display(rotate_90x(a,2))
puts "90xi="*26
display(rotate_90xi(a,2))

puts "Rotate 270*"
puts "90="*26
display(rotate_90(rotate_90(rotate_90(a))))
puts "90x="*26
display(rotate_90x(a,3))

puts "Rotate 360*"
puts "90="*26
display(rotate_90(rotate_90(rotate_90(rotate_90(a)))))
puts "90x="*26
display(rotate_90x(a,4))
