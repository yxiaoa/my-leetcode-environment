use super::base::Solution;

impl Solution {
    pub fn can_alice_win(nums: Vec<i32>) -> bool {
        let sum: i32 = nums.iter().sum();
        let sum_single_digits: i32 = nums.iter().filter(|&&n| n < 10).sum();
        sum != sum_single_digits * 2
    }
}
