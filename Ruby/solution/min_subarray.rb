# @param {Integer[]} nums
# @param {Integer} p
# @return {Integer}
def min_subarray(nums, p)
  target = nums.sum % p
  return 0 if target == 0

  mod_index = { 0 => -1 }
  min_length = nums.size
  prefix_mod = 0

  nums.each_with_index do |num, i|
    prefix_mod = (prefix_mod + num) % p
    needed_mod = (prefix_mod - target) % p
    if mod_index.key?(needed_mod)
      min_length = [min_length, i - mod_index[needed_mod]].min
    end
    mod_index[prefix_mod] = i
  end

  min_length == nums.size ? -1 : min_length
end
