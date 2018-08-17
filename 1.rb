given = [1,2,3,5,4,6,7,3]

def for_loop(list)
  sum = 0
  for i in 0..(list.count-1) do
    sum += list[i]
  end
  sum
end

def while_loop(list)
  i = 0 
  sum = 0
  while i < list.count do
    sum += list[i]
    i +=1
  end
  sum
end

def recurs(given, position=0, sum=0)
  sum += given[position]
  if position < (given.count-1) 
    position += 1
    recurs(given, position, sum)
  else 
    sum
  end
end

puts given.sum
puts '_____'
puts for_loop(given)
puts while_loop(given)
puts recurs(given)