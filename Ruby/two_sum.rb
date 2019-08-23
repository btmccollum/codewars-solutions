# more efficient memory wise but not quite as fast time-wise
def two_sum(nums, target)
  # per instruction there will always be an answer, so we know
  # it is [0,1] if length is 2
  return [0,1] if nums.length == 2
    
  nums.each_with_index do |num, index|
    num_to_check = target - num
    segment_to_check = nums[(index + 1)..(nums.length - 1)]
    if segment_to_check.include?(num_to_check)
      second_index = segment_to_check.index(num_to_check) + (index + 1)
      answer_arr = [index, second_index]
      return answer_arr
    end
  end
end

#faster runtime but not as efficient memory-wise:
# def two_sum(nums, target)
#   # per instruction there will always be an answer, so we know
#   # it is [0,1] if length is 2
#   return [0,1] if nums.length == 2
    
#   dict = {}
    
#   nums.each_with_index do |num, index|
#     num_to_check = target - num
#     if dict[num_to_check]
#         return nums.index(num_to_check), index
#     end
#     dict[num] = index
#   end
# end