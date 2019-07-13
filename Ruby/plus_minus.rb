# Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.

# Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

# For example, given the array  there are  elements, two positive, two negative and one zero. Their ratios would be ,  and . It should be printed as

# 0.400000
# 0.400000
# 0.200000

def plus_minus(arr)
  positive = 0
  negative = 0
  zero = 0
  len = arr.length.to_f

  arr.each do |num|
    case
    when num.positive?
      positive += 1
    when num.negative?
      negative -= 1
    when num.zero?
      zero += 1
    end
  end
  p sprintf("%.6f",(positive/len)).to_f
  p sprintf("%.6f",(negative/len).abs).to_f
  p sprintf("%.6f",(zero/len)).to_f
end