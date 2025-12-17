use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = "1234";
    let expected = false;
    assert_eq!(Solution::is_balanced(input.to_string()), expected);
}

#[test]
fn test_example_2() {
    let input = "24123";
    let expected = true;
    assert_eq!(Solution::is_balanced(input.to_string()), expected);
}
