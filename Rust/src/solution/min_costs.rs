use super::Solution;

impl Solution {
    pub fn min_costs(cost: Vec<i32>) -> Vec<i32> {
        let n = cost.len();
        let mut ret = vec![0; n];
        let mut min_cost = cost[0];
        ret[0] = min_cost;
        for i in 1..n {
            if cost[i] < min_cost {
                min_cost = cost[i];
            }
            ret[i] = min_cost;
        }
        ret
    }
}
