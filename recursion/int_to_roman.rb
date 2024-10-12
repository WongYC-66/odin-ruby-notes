# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

ROMAN_MAPPING = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def int_to_roman(num)
  return "" if num == 0

  ROMAN_MAPPING.to_a.each do |k, v|
    if num >= k
      return res = v + int_to_roman(num - k)
    end
  end

end

p int_to_roman(9) # IX
p int_to_roman(40) # XL
p int_to_roman(1904) # MCMIV
p int_to_roman(3549) # MMMDXLIX