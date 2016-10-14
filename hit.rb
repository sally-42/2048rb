a = ['00', '01', '02', '03']
p a
a_clone = a.map(&:clone)
p a_clone
a_clone[1] = "cats"
p a_clone
p a
