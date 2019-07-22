# https://www.codewars.com/kata/numerical-palindrome-number-4/train/ruby
# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

# 2332 
# 110011 
# 54322345

# For a given number num, return its closest numerical palindrome which can either be smaller or larger than num. If there are 2 possible values, the larger value should be returned. If num is a numerical palindrome itself, return it.

# For this kata, single digit numbers will NOT be considered numerical palindromes.

# Also, you know the drill - be sure to return "Not valid" if the input is not an integer or is less than 0.

def palindrome(num)
  return "Not valid" if !num.is_a?(Integer) || num < 0

  return num if is_palindrome?(num)

  high = num
  low = num

  loop do
    high += 1
    low -= 1 
    if is_palindrome?(high)
      return high
    end

    if low > 9 && is_palindrome?(low)
      return low
    end
  end
end

# helper method to check if it is a palindrome
def is_palindrome?(num)
  return false if num.digits.length == 1
  temp_num = num.digits.reverse
  left = 0
  right = temp_num.length - 1
  while left <= right do
    return false if temp_num[left] != temp_num[right]

    left += 1
    right -= 1
  end
  return true
end