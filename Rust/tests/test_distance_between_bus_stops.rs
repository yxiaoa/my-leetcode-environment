use leetcode_rust::solution::Solution;

#[test]
fn test_example_1() {
    let input0 = vec![1, 2, 3, 4];
    let input1 = 0;
    let input2 = 1;
    let expected = 1;
    assert_eq!(
        Solution::distance_between_bus_stops(input0, input1, input2),
        expected
    );
}

#[test]
fn test_example_2() {
    let input0 = vec![1, 2, 3, 4];
    let input1 = 0;
    let input2 = 2;
    let expected = 3;
    assert_eq!(
        Solution::distance_between_bus_stops(input0, input1, input2),
        expected
    );
}

#[test]
fn test_example_3() {
    let input0 = vec![1, 2, 3, 4];
    let input1 = 0;
    let input2 = 3;
    let expected = 4;
    assert_eq!(
        Solution::distance_between_bus_stops(input0, input1, input2),
        expected
    );
}
