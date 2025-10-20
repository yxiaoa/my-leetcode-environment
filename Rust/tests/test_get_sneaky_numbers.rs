use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = vec![0, 1, 1, 0];
    let expected = vec![0, 1];
    let mut result = Solution::get_sneaky_numbers(input);
    result.sort();
    assert_eq!(result, expected);
}

#[test]
fn test_example_2() {
    let input = vec![0, 3, 2, 1, 3, 2];
    let expected = vec![2, 3];
    let mut result = Solution::get_sneaky_numbers(input);
    result.sort();
    assert_eq!(result, expected);
}

#[test]
fn test_example_3() {
    let input = vec![7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2];
    let expected = vec![4, 5];
    let mut result = Solution::get_sneaky_numbers(input);
    result.sort();
    assert_eq!(result, expected);
}
