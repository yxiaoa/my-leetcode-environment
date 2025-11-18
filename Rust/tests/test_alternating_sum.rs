use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = vec![1,3,5,7];
    let expected = -4;
    assert_eq!(Solution::alternating_sum(input), expected);
}

#[test]
fn test_example_2() {
    let input = vec![100];
    let expected = 100;
    assert_eq!(Solution::alternating_sum(input), expected);
}
