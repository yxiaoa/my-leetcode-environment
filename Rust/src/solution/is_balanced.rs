use super::Solution;

impl Solution {
    pub fn is_balanced(num: String) -> bool {
	let bytes = num.as_bytes();
	let n = bytes.len();
	let mut left_sum = 0;
	let mut right_sum = 0;
	for i in (0..n).step_by(2) {
	    left_sum += (bytes[i] - b'0') as i32;
	}
	for i in (1..n).step_by(2) {
	    right_sum += (bytes[i] - b'0') as i32;
	}
	left_sum == right_sum
    }
}
