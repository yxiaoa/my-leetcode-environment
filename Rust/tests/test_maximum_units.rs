use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![[1,3],[2,2],[3,1]].iter().map(|x| x.to_vec()).collect();
    let input1 = 4;
    let expected = 8;
    assert_eq!(Solution::maximum_units(input0, input1), expected);
}

#[test]
fn test_example_2() {
    let input0 = vec![[5,10],[2,5],[4,7],[3,9]].iter().map(|x| x.to_vec()).collect();
    let input1 = 10;
    let expected = 91;
    assert_eq!(Solution::maximum_units(input0, input1), expected);
}
