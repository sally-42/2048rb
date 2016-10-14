require_relative "presentation_helpers.rb"
require_relative "rotate_helpers.rb"
require_relative "hit_helpers.rb"

a = [
  ['2', '', '4', '4'],
  ['2', '', '', ''],
  ['', '', '', ''],
  ['', '', '4', ''],
]
a_copy = a.map { |e| copy e }

display a
display a_copy

p "="*26

a[0][0] = "cats"
a_copy[0][0] = "dogs"

display a
display a_copy
