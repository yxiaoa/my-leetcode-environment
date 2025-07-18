use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let cost = vec![5, 3, 4, 1, 3, 2];
    let expected = vec![5, 3, 3, 1, 1, 1];
    assert_eq!(Solution::min_costs(cost), expected);
}

#[test]
fn test_example_2() {
    let cost = vec![1, 2, 4, 6, 7];
    let expected = vec![1, 1, 1, 1, 1];
    assert_eq!(Solution::min_costs(cost), expected);
}
