use leetcode_rust::solution::MyQueue::MyQueue;

#[test]
fn test_example_1() {
	let input0 = vec!["MyQueue", "push", "push", "peek", "pop", "empty"];
	let input1 = vec![vec![], vec![1], vec![2], vec![], vec![], vec![]];
	let expected = vec![None, None, None, Some(1), Some(1), Some(0)];

	let mut queue = MyQueue::new();

	for (i, &op) in input0.iter().enumerate() {
	match op {
		"MyQueue" => {
		queue = MyQueue::new();
		},
		"push" => {
		queue.push(input1[i][0]);
		},
		"peek" => {
		assert_eq!(queue.peek(), expected[i].unwrap());
		},
		"pop" => {
		assert_eq!(queue.pop(), expected[i].unwrap());
		},
		"empty" => {
		assert_eq!(queue.empty() as i32, expected[i].unwrap());
		},
		_ => panic!("Unknown operation"),
	}

	}
}
