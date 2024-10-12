# run in command : rspec
#             : rspec --format documentation

#  https://www.theodinproject.com/lessons/ruby-introduction-to-rspec

#spec/calculator_spec.rb

require './lib/calculator' 

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

     # add this
    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#subtract" do
    it "returns the remaining of a - b" do
      calculator = Calculator.new
      expect(calculator.subtract(3, 1)).to eql(2)
    end

     # add this
    it "returns the remaining of a from the rest" do
      calculator = Calculator.new
      expect(calculator.subtract(10, 2, 3)).to eql(5)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3, 7)).to eql(21)
    end

    it "returns the product of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3, 2, 7)).to eql(42)
    end
  end

  describe "#divide" do
    it "returns the quotient of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(81, 3)).to eql(27.0)
    end

    it "returns the quotient of two numbers with decimals" do
      calculator = Calculator.new
      expect(calculator.divide(3, 2)).to eql(1.5)
    end

    it "raise error if divide by 0" do
      calculator = Calculator.new
      expect(calculator.divide(1, 0)).to eql("error")
    end
  end 

end