use crate::solution::Solution;

impl Solution {
    pub fn add_to_array_form(num: Vec<i32>, k: i32) -> Vec<i32> {
        let mut result = Vec::new();
        let mut carry = k;
        for i in (0..num.len()).rev() {
            let sum = num[i] + carry;
            result.push(sum % 10);
            carry = sum / 10;
        }
        while carry > 0 {
            result.push(carry % 10);
            carry /= 10;
        }
        result.reverse();
        result
    }
}
