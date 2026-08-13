use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![10, 20, 30, 5, 10, 50];
    let expected = 65;
    assert_eq!(Solution::max_ascending_sum(input0), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![10, 20, 30, 40, 50];
    let expected = 150;
    assert_eq!(Solution::max_ascending_sum(input0), expected);
}

#[test]
fn test_example_3() {
    let input0 = vec![12, 17, 15, 13, 10, 11, 12];
    let expected = 33;
    assert_eq!(Solution::max_ascending_sum(input0), expected);
}
