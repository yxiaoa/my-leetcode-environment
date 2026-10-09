use super::Solution;

impl Solution {
    pub fn elevator_requests(n: i32, requests: Vec<i32>) -> i32 {
        let _ = n;
	return requests[0] + requests.windows(2).map(|w| (w[1] - w[0]).abs()).sum::<i32>();
    }
}
