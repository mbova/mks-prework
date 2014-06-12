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
  nOfK2 = k2.to_s.length
  string_k2 = k2.split(//)
  leftA = (k2.to_s[0]..k2.to_s[n-1]).to_i
  puts leftA
  leftB = (k2.to_s[0]..k2.to_s[n-2]).to_i
  puts leftB
  right = (string_k2[(n-1..-1)]).join.to_i
  puts right
  if (leftA + right == k) || (leftB + right == k)
    true
  else
    false
  end
end

kaprekar?(46)