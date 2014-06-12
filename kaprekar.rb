=begin
Problem Statement

9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
Find if a given number is a Kaprekar number.
=end

def kaprekar?(k)
  k2 = k ** 2

  n = k.to_s.length
  string_k2 = k2.to_s

  leftA = string_k2[(0..n-1)].to_i

  leftB = string_k2[(0..n-2)].to_i

  right = string_k2[(-1-(n-1)..-1)].to_i 

  (leftA + right == k) || (leftB + right == k)

end