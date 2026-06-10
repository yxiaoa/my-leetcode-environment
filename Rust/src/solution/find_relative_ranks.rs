use crate::solution::Solution;

impl Solution {
    pub fn find_relative_ranks(score: Vec<i32>) -> Vec<String> {
        let map = score
            .iter()
            .enumerate()
            .map(|(i, &s)| (s, i))
            .collect::<std::collections::HashMap<_, _>>();
        let mut sorted = score.clone();
        sorted.sort_unstable_by(|a, b| b.cmp(a));
        let mut ans = vec![String::new(); score.len()];
        for (i, &s) in sorted.iter().enumerate() {
            let rank = match i {
                0 => "Gold Medal".to_string(),
                1 => "Silver Medal".to_string(),
                2 => "Bronze Medal".to_string(),
                _ => (i + 1).to_string(),
            };
            ans[map[&s]] = rank;
        }
        ans
    }
}
