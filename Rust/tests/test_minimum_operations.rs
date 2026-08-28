use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![1, 2, 3, 4];
    let expected = 3;
    assert_eq!(Solution::minimum_operations(input0), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![3, 6, 9];
    let expected = 0;
    assert_eq!(Solution::minimum_operations(input0), expected);
}
