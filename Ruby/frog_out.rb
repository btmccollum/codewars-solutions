# Help the frog to find a way to freedom
# You have an array of integers and have a frog at the first position

# [Frog, int, int, int, ..., int]

# The integer itself may tell you the length and the direction of the jump

#  For instance:
#   2 = jump two indices to the right
#  -3 = jump three indices to the left
#   0 = stay at the same position
# Your objective is to find how many jumps are needed to jump out of the array.

# Return -1 if Frog can't jump out of the array

# Example:
# array = [1, 2, 1, 5]; 
# jumps = 3  (1 -> 2 -> 5 -> <jump out>)

def solution(a)
  return 1 if a[0] > 0 && a[0] > (a.length - 1)

  arr_length = a.length - 1
  current_index = 0
  jumps_counter = 0
  # loop until current_index would be outside of either side of array
  until jumps_counter > a.length do
    current_index += a[current_index]
    jumps_counter += 1
    return jumps_counter if current_index > arr_length || current_index.negative?
  end
  -1
end
