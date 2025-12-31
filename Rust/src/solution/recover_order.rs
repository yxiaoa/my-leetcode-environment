use super::Solution;

impl Solution {
    pub fn recover_order(order: Vec<i32>, friends: Vec<i32>) -> Vec<i32> {
        order
            .iter()
            .filter(|x| friends.contains(x))
            .cloned()
            .collect()
    }
}
