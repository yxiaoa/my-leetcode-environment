use super::Solution;

impl Solution {
    pub fn max_ascending_sum(nums: Vec<i32>) -> i32 {
	let mut max_sum = 0;
	let mut current_sum = 0;
	let mut prev_num = i32::MIN;

	for &num in &nums {
	    if num > prev_num {
		current_sum += num;
	    } else {
		max_sum = max_sum.max(current_sum);
		current_sum = num;
	    }
	    prev_num = num;
	}

	max_sum.max(current_sum)
    }
}
