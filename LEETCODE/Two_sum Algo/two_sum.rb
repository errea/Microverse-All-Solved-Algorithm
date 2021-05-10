def two_sum(nums, target)
    check = {}
     nums.each_with_index do |value, i|
         diff = target - value
         
         if check[diff]
             return [check[diff], i]
         else
             check[value] = i
         end 
     end 
end