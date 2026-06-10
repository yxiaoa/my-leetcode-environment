use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![5,4,3,2,1];
    let expected = vec!["Gold Medal","Silver Medal","Bronze Medal","4","5"];
    assert_eq!(Solution::find_relative_ranks(input0), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![10,3,8,9,4];
    let expected = vec!["Gold Medal","5","Bronze Medal","Silver Medal","4"];
    assert_eq!(Solution::find_relative_ranks(input0), expected);
}
