require_relative "presentation_helpers.rb"
require_relative "rotate_helpers.rb"
require_relative "hit_helpers.rb"

a = [
  ['2', '', '4', '4'],
  ['2', '', '16', '4'],
  ['', '', '16', ''],
  ['', '', '4', ''],
]

# 0 - left
# 1 - down
# 2 - right
# 3 - up
input = 1

display a
a = rotate_90_n_times( hit( rotate_90_n_times( a,input )), 4-input)
p "="*26
display a
