use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input = 1;
    let expected = vec![
        "0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00",
    ];
    assert_eq!(Solution::read_binary_watch(input), expected);
}

#[test]
fn test_example_2() {
    let input = 9;
    let expected: Vec<&str> = vec![];
    assert_eq!(Solution::read_binary_watch(input), expected);
}
