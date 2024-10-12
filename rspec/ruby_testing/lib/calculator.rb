#lib/calculator.rb

class Calculator
  def add(*rest)
    rest.reduce(0) { |sum, n| sum + n}
  end

  def subtract(a, *rest)
    a - rest.reduce(0) { |sum, n| sum + n}
  end

  def multiply(*rest)
    rest.reduce(1) { |product, n| product * n}
  end

  def divide(a, b)
    return "error" if b == 0
    a.to_f / b
  end
  
end