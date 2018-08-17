given = [50, 2, 1, 9]
other_given = [400, 20, 8, 9]

def find_largest_sum(list)
  remaining = list.dup
  resulting = ""
  list.each do |element|
    biggest = remaining.max_by {|x| first_int(x)}
    resulting<<biggest.to_s
    remaining.delete(biggest)
  end
  resulting.to_i
end


def first_int(num)
  num.to_s[0].to_i
end

puts find_largest_sum(given)
puts find_largest_sum(other_given)