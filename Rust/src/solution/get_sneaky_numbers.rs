use super::Solution;

impl Solution {
    pub fn get_sneaky_numbers(nums: Vec<i32>) -> Vec<i32> {
        let mut sneaky_numbers = Vec::new();
        let mut cnt = vec![0; nums.len() - 2];
        let mut index = 0;
        for &num in &nums {
            cnt[num as usize] += 1;
            if cnt[num as usize] == 2 {
                sneaky_numbers.push(num);
                index += 1;
                if index == 2 {
                    break;
                }
            }
        }
        sneaky_numbers
    }
}
