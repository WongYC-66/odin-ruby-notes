# Define a recursive function that finds the factorial of a number.

def factorial (n)
  return 1 if n <= 1
  n * factorial(n - 1)
end


p factorial(10) # 3628800
p factorial(6) # 720
p factorial(5) # 120
p factorial(1) # 1
p factorial(0) # 0