use super::base::Solution;

impl Solution {
    pub fn read_binary_watch(turned_on: i32) -> Vec<String> {
        let mut result = Vec::new();
        for h in 0u32..12 {
            for m in 0u32..60 {
                if (h.count_ones() + m.count_ones()) as i32 == turned_on {
                    result.push(format!("{}:{:02}", h, m));
                }
            }
        }
        result
    }
}
