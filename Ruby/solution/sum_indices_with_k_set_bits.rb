# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def sum_indices_with_k_set_bits(nums, k)
	nums.each_with_index.reduce(0) do |sum, (num, i)|
		sum + (i.to_s(2).count('1') == k ? num : 0)
	end
end
