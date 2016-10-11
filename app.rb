require 'ap'

a = [
  ['00', '01', '02', '03'],
  ['10', '11', '12', '13'],
  ['20', '21', '22', '23'],
  ['30', '31', '32', '33'],
]


a_lr = a
ap a_lr


a_rl = a.map do |row|
  row.reverse
end
ap a_rl


a_ud = a.transpose
ap a_ud


a_du = a.transpose.map do |col|
  col.reverse
end
ap a_du
