def search_insert(nums, target)
    min = 0
max = nums.length - 1
while min <= max
  mid = (min + max) / 2
  if nums[mid] == target
      return mid
  elsif nums[mid] > target
      max = mid - 1
  else
      min = mid + 1
  end
end
nums.push(target)
nums.sort!
nums.index(target)
end