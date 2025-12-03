use super::Solution;

impl Solution {
    pub fn find_permutation_difference(s: String, t: String) -> i32 {
        let mut map = vec![0; 26];
        let mut sum = 0;
        for i in 0..s.len() {
            map[(s.as_bytes()[i] - b'a') as usize] = i;
        }
        for i in 0..t.len() {
            let idx = (t.as_bytes()[i] - b'a') as usize;
            sum += (i as i32 - map[idx] as i32).abs();
        }
        sum
    }
}
