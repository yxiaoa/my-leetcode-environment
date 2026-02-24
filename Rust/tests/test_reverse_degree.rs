use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = "abc";
    let expected = 148;
    assert_eq!(Solution::reverse_degree(input.to_string()), expected);
}

#[test]
fn test_example_2() {
    let input = "zaza";
    let expected = 160;
    assert_eq!(Solution::reverse_degree(input.to_string()), expected);
}
