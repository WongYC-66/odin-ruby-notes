# Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".
def n_bottles(n)
  if n == 0
    puts "no more bottles of beer on the wall"
    return
  end

  puts "#{n} bottles of beer on the wall"
  n_bottles(n - 1)

end


p n_bottles(5) 
p n_bottles(1) 
p n_bottles(0) 