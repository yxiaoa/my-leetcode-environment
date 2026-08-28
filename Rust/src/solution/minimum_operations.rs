use super::Solution;

impl Solution {
    pub fn minimum_operations(nums: Vec<i32>) -> i32 {
	let mut count = 0;
        for &num in &nums {
	    if (num % 3) != 0 {
		count += 1;
	    }
	}
        count
    }
}
