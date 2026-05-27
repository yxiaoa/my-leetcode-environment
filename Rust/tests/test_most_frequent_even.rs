use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![0,1,2,2,4,4,1];
    let expected = 2;
    assert_eq!(Solution::most_frequent_even(input0), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![4,4,4,9,2,4];
    let expected = 4;
    assert_eq!(Solution::most_frequent_even(input0), expected);
}

#[test]
fn test_example_3() {
    let input0 = vec![29,47,21,41,13,37,25,7];
    let expected = -1;
    assert_eq!(Solution::most_frequent_even(input0), expected);
}
