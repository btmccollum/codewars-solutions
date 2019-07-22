# Task https://www.codewars.com/kata/simple-fun-number-79-delete-a-digit/train/ruby
# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

def delete_digit(n)
  max = 0
  0.upto(n.digits.count - 1) do |i|
    num = n.digits.reverse
    num.delete_at(i)
    converted_num = num.join("").to_i
    max = converted_num if converted_num > max
  end
  max
end
