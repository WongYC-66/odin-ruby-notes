# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten(arr, res = [])
  case arr
    in Array
      arr.each do |elem|
        flatten(elem, res)
      end
    else
      res.push(arr)
  end

  res

end

p flatten([[1, 2], [3, 4]]) # [1, 2, 3, 4]
p flatten([[1, [8, 9]], [3, 4]]) # [1, 8, 9, 3, 4]
p flatten([[1, [8, [9,[1]]]], [3, 4]]) # [1, 8, 9, 1, 3, 4]