# a = ['00', '01', '02', '03']
a = [2, 2, nil, 2]
a_string = a.map(&:to_s) #=> ["2", "2", "", "2"]

p a
p a_string

def to_nums_and_nulls array
  array.map do |e|
    if e.to_s == ""
      nil
    else
      e.to_i
    end
  end
end

p to_nums_and_nulls a_string #=> [2, 2, nil, 2]
# a_clone = a.map(&:clone)

# p a_clone
# p a_clone.compact
