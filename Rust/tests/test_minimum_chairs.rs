use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 ="EEEEEEE";
    let expected = 7;
    assert_eq!(Solution::minimum_chairs(input0.to_string()), expected);
}

#[test]
fn test_example_2() {
    let input0 = "ELELEEL";
    let expected = 2;
    assert_eq!(Solution::minimum_chairs(input0.to_string()), expected);
}

#[test]
fn test_example_3() {
    let input0 = "ELEELEELLL";
    let expected = 3;
    assert_eq!(Solution::minimum_chairs(input0.to_string()), expected);
}
