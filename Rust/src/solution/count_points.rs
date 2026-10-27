use crate::solution::Solution;

impl Solution {
    pub fn count_points(points: Vec<Vec<i32>>, queries: Vec<Vec<i32>>) -> Vec<i32> {
        let mut result = Vec::new();
        for query in queries {
            let mut count = 0;
            for point in &points {
                let dx = point[0] - query[0];
                let dy = point[1] - query[1];
                if dx * dx + dy * dy <= query[2] * query[2] {
                    count += 1;
                }
            }
            result.push(count);
        }
        result
    }
}
