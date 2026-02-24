use super::Solution;

impl Solution {
    pub fn reverse_degree(s: String) -> i32 {
        s.chars().enumerate().fold(0, |acc, (i, c)| {
            acc + (26 - (c as u8 - b'a')) as i32 * (i as i32 + 1)
        })
    }
}
