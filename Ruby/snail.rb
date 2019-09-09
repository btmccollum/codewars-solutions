# Snail Sort
# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#          [4,5,6],
#          [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]
# For better understanding, please follow the numbers of the next array consecutively:

# array = [[1,2,3],
#          [8,9,4],
#          [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]
# This image will illustrate things more clearly:


# NOTE: The idea is not sort the elements from the lowest value to the highest; the idea is to traverse the 2-d array in a clockwise snailshell pattern.

# NOTE 2: The 0x0 (empty matrix) is represented as [[]]

UP     = 0
RIGHT  = 1
DOWN   = 2
LEFT   = 3

def snail(array)  
  return [] if array[0].empty?
  
  current_row    = 0
  current_col    = 0
  direction      = 1 
  
  # keep track of visited grid indices [0][0], [0][1], etc..
  total_cells    = determine_size(array)
  visited_count  = 1
  
  visited        = [[0,0]]
  visited_values = [get_value(array, current_row, current_col)]
#   visited.append([0,0])
#   visited_values.append(get_value(array, current_row, current_col))
  
  until visited_count == total_cells
    case direction
    when UP
      current_row, current_col, direction = move_up(array, current_row, current_col, direction, visited)
    when RIGHT
      current_row, current_col, direction = move_right(array, current_row, current_col, direction, visited)
    when DOWN
      current_row, current_col, direction = move_down(array, current_row, current_col, direction, visited)
    when LEFT
      current_row, current_col, direction = move_left(array, current_row, current_col, direction, visited)
    end
    visited_values.append(get_value(array, current_row, current_col))
    visited.append([current_row, current_col])
    visited_count += 1
  end
  visited_values
end

# do a 90 degree turn to the right when we 
# hit a border or checked value
def change_direction(dir)
  (dir + 1) % 4
end

# determine total number of spaces in entire grid
def determine_size(arr)
  arr.size * arr[0].size
end

def get_value(array, row, col)
  array[row][col]
end

def move_up(array, current_row, current_col, direction, visited)
  if array[current_row - 1] && visited.index([(current_row - 1), current_col]).nil?
    current_row -= 1
  else
    direction = change_direction(direction)
    current_col += 1
  end
  return current_row, current_col, direction
end

def move_right(array, current_row, current_col, direction, visited)
  if array[current_row][current_col + 1] && visited.index([current_row, current_col + 1]).nil?
    current_col += 1
  else
    direction = change_direction(direction)
    current_row += 1
  end
  return current_row, current_col, direction
end

def move_down(array, current_row, current_col, direction, visited)
  if array[current_row + 1] && visited.index([(current_row + 1), current_col]).nil?
    current_row += 1
  else
    direction = change_direction(direction)
    current_col -= 1
  end
  return current_row, current_col, direction
end

def move_left(array, current_row, current_col, direction, visited)
  if current_col > 0
    if array[current_row][current_col - 1] && visited.index([current_row, (current_col - 1)]).nil?
      current_col -= 1
    else
      direction = change_direction(direction)
      current_row -= 1
    end
  else 
    direction = change_direction(direction)
    current_row -= 1
  end
  return current_row, current_col, direction
end

# recursive solution 
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end