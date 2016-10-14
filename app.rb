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
input = ""
key_codes = ['h', 'j', 'l', 'k']
key_codes = {
  'h' => 0,
  'j' => 1,
  'l' => 2,
  'k' => 3,
  'q' => 'q'
}

p num = key_codes['h']

while input != 'q'
  display a
  puts "="*26
  print "input:"
  char_input = gets.chomp
  input = key_codes[char_input]
  a = rotate_90_n_times( \
      hit( \
      rotate_90_n_times( a,input )), 4-input) \
      unless input == 'q'
end
