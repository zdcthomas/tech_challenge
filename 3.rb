def fib
  fib_ar = [0,1]
  while fib_ar.count < 100 do
    fib_ar << (fib_ar[-1] + fib_ar[-2])
  end
  fib_ar
end

puts fib