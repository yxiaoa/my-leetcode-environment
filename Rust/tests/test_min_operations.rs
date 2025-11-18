use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![3, 9, 7];
    let input1 = 5;
    let expected = 4;
    assert_eq!(Solution::min_operations(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![4, 1, 3];
    let input1 = 4;
    let expected = 0;
    assert_eq!(Solution::min_operations(input0, input1), expected);
}

#[test]
fn test_example_3() {
    let input0 = vec![3, 2];
    let input1 = 6;
    let expected = 5;
    assert_eq!(Solution::min_operations(input0, input1), expected);
}
