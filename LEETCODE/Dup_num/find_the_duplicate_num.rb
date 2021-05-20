def find_duplicate(nums)
    counts_arr = {}
    result = nil
    nums.each do |num|
    counts_arr[num] ? counts_arr[num] += 1 : counts_arr[num] = 1
    result = num if counts_arr[num] > 1
  end
  result
end 