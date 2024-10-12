#Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.

def fib(n)
  return 0 if n == 0
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)
end

p fib(0) # 0
p fib(1) # 1
p fib(5) # 5
p fib(6) # 8
p fib(7) # 13
p fib(8) # 21
p fib(9) # 34
p fib(10) # 55