use crate::solution::Solution;

impl Solution {
    pub fn final_position_of_snake(n: i32, commands: Vec<String>) -> i32 {
        let mut position = 0;
        for command in commands {
            match command.as_str() {
                "LEFT" => position -= 1,
                "RIGHT" => position += 1,
                "UP" => position -= n,
                "DOWN" => position += n,
                _ => {}
            }
        }
        position
    }
}
