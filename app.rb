require 'ap'
require_relative "slam.rb"

a = [nil, 2, 2, 2]
p a
slam(a, 0, 1, 0)
p a

# a = [
#   ['00', '01', '02', '03'],
#   ['10', '11', '12', '13'],
#   ['20', '21', '22', '23'],
#   ['30', '31', '32', '33'],
# ]

a = [
  [nil, 2, 2, nil],
  [nil, nil, nil, nil],
  [2, 2, nil, nil],
  [nil, nil, nil, nil],
]


a_lr = a
# ap a_lr
ap a
a_lr.each { |row| slam(row, 0, 1, 0) }
a = a_lr
ap a

# a_rl = a.map do |row|
#   row.reverse
# end
# ap a_rl
#
#
# a_ud = a.transpose
# ap a_ud
#
#
# a_du = a.transpose.map do |col|
#   col.reverse
# end
# ap a_du
