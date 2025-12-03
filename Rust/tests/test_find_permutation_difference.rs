use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = "abc".to_string();
    let input1 = "bac".to_string();
    let expected = 2;
    assert_eq!(Solution::find_permutation_difference(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = "abcde".to_string();
    let input1 = "edbac".to_string();
    let expected = 12;
    assert_eq!(Solution::find_permutation_difference(input0, input1), expected);
}
