use crate::solution::Solution;

impl Solution {
    pub fn distance_between_bus_stops(distance: Vec<i32>, start: i32, destination: i32) -> i32 {
        let (start, destination) = (start.min(destination), start.max(destination));
        let (s, d) = (start as usize, destination as usize);
        let clockwise: i32 = distance[s..d].iter().sum();
        let total: i32 = distance.iter().sum();
        clockwise.min(total - clockwise)
    }
}
