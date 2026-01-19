use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![1, 4];
    let input1 = 2;
    let expected = 4;
    assert_eq!(Solution::find_poisoned_duration(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![1, 2];
    let input1 = 2;
    let expected = 3;
    assert_eq!(Solution::find_poisoned_duration(input0, input1), expected);
}
