def is_palindrome(x)
  reverse_x = x.to_s.reverse.to_i
  x == reverse_x ? true : false
end