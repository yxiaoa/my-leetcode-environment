use super::Solution;

impl Solution {
    pub fn alternating_sum(nums: Vec<i32>) -> i32 {
        let mut sum = 0;
        nums.iter().enumerate().for_each(|(i, &num)| {
            sum += if i % 2 == 0 { num } else { -num };
        });
        sum
    }
}
