# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def is_palindrome(s)
  return true if s.length <= 1

  # option 1
  # return false if s.slice!(0) != s.slice!(-1)
  # is_palindrome(s)

  # option 2
  return false if s[0] != s[-1]
  is_palindrome(s[1..-2])
end


p is_palindrome('baabaab') # true
p is_palindrome('abcdefghgfedcba') # true
p is_palindrome('a') # true
p is_palindrome('ba') # false
p is_palindrome('abcd') # false
p is_palindrome('aaabeaaa') # false