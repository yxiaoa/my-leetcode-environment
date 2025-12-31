use leetcode_rust::solution::sum_range::NumArray;

#[test]
fn test_example_1() {
    let input0 = ["NumArray", "sumRange", "sumRange", "sumRange"];
    let input1 = [vec![-2, 0, 3, -5, 2, -1],
        vec![0, 2],
        vec![2, 5],
        vec![0, 5]];
    let expected = [0, 1, -1, -3];

    let mut sln = NumArray::new(input1[0].clone());

    for i in 1..input0.len() {
        let op = &input0[i];
        let params = &input1[i];
        if *op == "NumArray" {
            sln = NumArray::new(params.clone());
        } else if *op == "sumRange" {
            let output: i32 = sln.sum_range(params[0], params[1]);
            assert_eq!(output, expected[i]);
        } else {
            panic!("Unknown operation");
        }
    }
}
