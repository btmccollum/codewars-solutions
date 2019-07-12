# Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

# For each game, Emma will get an array of clouds numbered  if they are safe or  if they must be avoided. For example,  indexed from . The number on each cloud is its index in the list so she must avoid the clouds at indexes  and . She could follow the following two paths:  or . The first path takes  jumps while the second takes .

# Function Description

# Complete the jumpingOnClouds function in the editor below. It should return the minimum number of jumps required, as an integer.

# jumpingOnClouds has the following parameter(s):

# c: an array of binary integers

# Complete the jumpingOnClouds function below.
def jumping_on_clouds(c)
  cloud_arr = c
  current_position = cloud_arr[0]
  number_of_jumps = 0

  while current_position < (cloud_arr.length - 1) do
    # we go for the shortest route first, 2 is max 
    # jumps from current position
    if (cloud_arr[current_position + 2]).zero?
      current_position += 2
      number_of_jumps += 1
    # otherwise we check if the position next to us is open
    elsif (cloud_arr[current_position + 1]).zero?
      current_position += 1
      number_of_jumps += 1
    # covering possibility of a no-win situation (despite rules
    # saying we can always win)
    else
      return 'Unable to reach the end.'
    end
  end
  number_of_jumps
end
