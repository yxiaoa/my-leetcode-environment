use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![vec![1,3],vec![3,3],vec![5,3],vec![2,2]];
    let input1 = vec![vec![2,3,1],vec![4,3,1],vec![1,1,2]];
    let expected = vec![3,2,2];
    assert_eq!(Solution::count_points(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![vec![1,1],vec![2,2],vec![3,3],vec![4,4],vec![5,5]];
    let input1 = vec![vec![1,2,2],vec![2,2,2],vec![4,3,2],vec![4,3,3]];
    let expected = vec![2,3,2,4];
    assert_eq!(Solution::count_points(input0, input1), expected);
}
