
# calculate Fibonacci(20)
# for benchmark
def fib(n)
  if n<2
    return n
  else
    return fib(n-2)+fib(n-1)
  end
end
puts fib(10), "\n"