use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = vec![1, 2, 3, 4, 10];
    let expected = false;
    assert_eq!(Solution::can_alice_win(input), expected);
}

#[test]
fn test_example_2() {
    let input = vec![1, 2, 3, 4, 5, 14];
    let expected = true;
    assert_eq!(Solution::can_alice_win(input), expected);
}

#[test]
fn test_example_3() {
    let input = vec![5, 5, 5, 25];
    let expected = true;
    assert_eq!(Solution::can_alice_win(input), expected);
}
