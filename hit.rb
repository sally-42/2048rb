a = ["2", "2", "4", "2"]
# a = [2, 2, nil, 2]

def copy array
  array.map(&:clone)
end

def slide array
  a = to_nums_and_nulls array
  a_compact = a.compact
  delta = a.length - a_compact.length

  delta.times { a_compact << nil }
  a_compact.map(&:to_s)
end

def merge array
  a = to_nums_and_nulls array
  a.each_with_index do |val, i|
    if a[i] && a[i] == a[i+1]
      a[i] = 2*a[i]
      a[i+1] = nil
    else
      # a[i] == nil
    end
  end
  a.map(&:to_s)
end

def to_nums_and_nulls array
  array.map do |e|
    if e.to_s == ""
      nil
    else
      e.to_i
    end
  end
end

# p a
# p slide a
p "a",a
# p slide(merge(slide a))
b = copy a
p "b",b
b[0] = "cats"
p "b",b
p "a",a
# p to_strings a
# p a
# p to_nums_and_nulls a
# p a
# p to_nums_and_nulls a_string #=> [2, 2, nil, 2]
# a_clone = a.map(&:clone)

# p a_clone
# p a_clone.compact
