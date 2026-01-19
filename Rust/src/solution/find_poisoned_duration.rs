use super::base::Solution;

impl Solution {
    pub fn find_poisoned_duration(time_series: Vec<i32>, duration: i32) -> i32 {
	let mut total = duration;
	for i in 1..time_series.len() {
	    total += std::cmp::min(time_series[i] - time_series[i - 1], duration);
	}
	total
    }
}
