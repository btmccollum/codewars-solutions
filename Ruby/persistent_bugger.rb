# Write a function, persistence, that takes in a positive 
# parameter num and returns its multiplicative persistence, 
# which is the number of times you must multiply the digits 
# in num until you reach a single digit.

def persistence(n)
  raise "Argument must be a positive number." if !n.is_a?(Integer) || n < 0 
  times_multiplied = 0
  ans = n
  
  until ans.digits.length == 1 do
    ans = ans.digits.inject(:*)
    times_multiplied += 1
  end
    
  return times_multiplied
end