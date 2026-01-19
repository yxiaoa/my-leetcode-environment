use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = 2;
    let input1 = vec![String::from("RIGHT"), String::from("DOWN")];
    let expected = 3;
    assert_eq!(Solution::final_position_of_snake(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = 3;
    let input1 = ["DOWN","RIGHT","UP"].iter().map(|s| s.to_string()).collect();
    let expected = 1;
    assert_eq!(Solution::final_position_of_snake(input0, input1), expected);
}
