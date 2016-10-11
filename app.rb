require 'ap'
puts "Always slam left to right"
a = [
  ['00', '01', '02', '03'],
  ['10', '11', '12', '13'],
  ['20', '21', '22', '23'],
  ['30', '31', '32', '33'],
]

puts "left is left, right is right"
a_lr = a
ap a_lr

puts "left is right, right is left"
a_rl = a.map do |row|
  row.reverse
end
ap a_rl

puts "left is up, right is down"
a_ud = a.transpose
ap a_ud

puts "left is down, right is up"
a_du = a.transpose.map do |col|
  col.reverse
end
ap a_du
