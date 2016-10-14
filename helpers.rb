require 'presentation_helpers.rb'
a = [
  ['00', '01', '02', '03'],
  ['10', '11', '12', '13'],
  ['20', '21', '22', '23'],
  ['30', '31', '32', '33'],
]

def copy array
  array.map(&:clone)
end

# returns a copy of array
def rotate_90(array)
  a = copy array
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
