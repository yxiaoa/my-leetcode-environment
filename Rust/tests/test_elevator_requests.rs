use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = 5;
    let input1 = vec![2, 1, 4, 3];
    let expected = 7;
    assert_eq!(Solution::elevator_requests(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = 3;
    let input1 = vec![2, 0, 0];
    let expected = 4;
    assert_eq!(Solution::elevator_requests(input0, input1), expected);
}
