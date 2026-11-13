use super::base::Solution;

impl Solution {
    pub fn minimum_chairs(s: String) -> i32 {
        let mut max_chairs = 0;
        let mut current_chairs = 0;
        for c in s.chars() {
            if c == 'E' {
                current_chairs += 1;
                max_chairs = max_chairs.max(current_chairs);
            } else if c == 'L' {
                current_chairs -= 1;
            }
        }
        max_chairs
    }
}
