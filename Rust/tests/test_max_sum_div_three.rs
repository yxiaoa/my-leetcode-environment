use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![3, 6, 5, 1, 8];
    let expected = 18;
    assert_eq!(Solution::max_sum_div_three(input0), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![4];
    let expected = 0;
    assert_eq!(Solution::max_sum_div_three(input0), expected);
}

#[test]
fn test_example_3() {
    let input0 = vec![1, 2, 3, 4, 4];
    let expected = 12;
    assert_eq!(Solution::max_sum_div_three(input0), expected);
}
