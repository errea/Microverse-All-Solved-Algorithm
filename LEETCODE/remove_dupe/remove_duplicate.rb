def remove_duplicates(nums)
    not_a_duplicate_index = 0
     nums.each do |num|
         if (not_a_duplicate_index == 0 || num > nums[not_a_duplicate_index - 1])
             nums[not_a_duplicate_index] = num
             not_a_duplicate_index += 1
         end
     end
     nums.replace(nums)
     not_a_duplicate_index
 end