use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![3, 1, 2, 5, 4];
    let input1 = vec![1, 3, 4];
    let expected = vec![3, 1, 4];
    assert_eq!(Solution::recover_order(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![1, 4, 5, 3, 2];
    let input1 = vec![2, 5];
    let expected = vec![5, 2];
    assert_eq!(Solution::recover_order(input0, input1), expected);
}
