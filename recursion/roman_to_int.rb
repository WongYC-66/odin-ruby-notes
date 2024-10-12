# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

ROMAN_MAPPING = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def roman_to_int(s)
  return 0 if s == ""

  ROMAN_MAPPING.to_a.each do |k, v|
    if s.start_with?(k)
      next_s = s.slice(k.length..s.length)
      return v + roman_to_int(next_s)
    end
  end

end

p roman_to_int("IX") # 9
p roman_to_int("XL") # 40
p roman_to_int("MCMIV") # 1904
p roman_to_int("MMMDXLIX") # 3549