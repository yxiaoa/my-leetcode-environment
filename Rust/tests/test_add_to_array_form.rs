use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![1, 2, 0, 0];
    let input1 = 34;
    let expected = vec![1, 2, 3, 4];
    assert_eq!(Solution::add_to_array_form(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![2, 7, 4];
    let input1 = 181;
    let expected = vec![4, 5, 5];
    assert_eq!(Solution::add_to_array_form(input0, input1), expected);
}

#[test]
fn test_example_3() {
    let input0 = vec![2, 1, 5];
    let input1 = 806;
    let expected = vec![1, 0, 2, 1];
    assert_eq!(Solution::add_to_array_form(input0, input1), expected);
}
