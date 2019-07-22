# Write a function  https://www.codewars.com/kata/triple-trouble-1/train/ruby

# triple_double(num1, num2)
# which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

# If this isn't the case, return 0

def triple_double(num1,num2)
  return 0 if num1 == 0 or num2 ==0

  num1_len = num1.digits.length - 1
  num1_arr = num1.digits.reverse
  current_num = num1_arr[0]
  triple_count = 1

  1.upto(num1_len) do |i|
    if current_num == num1_arr[i]
      triple_count += 1
      break if triple_count == 3
    else
      current_num = num1_arr[i]
      triple_count = 1
    end
  end
  return 0 if triple_count != 3

  num2.to_s.match?("#{current_num}#{current_num}") ? 1 : 0
end