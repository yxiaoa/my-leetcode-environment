import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/Solution';

test('countTestedDevices', () => {
	let input0 = [[1, 1, 2, 1, 3], [0, 1, 2]];
	let expected = [3, 2];
	for (let i = 0; i < input0.length; i++) {
		expect(solution.countTestedDevices(input0[i])).toBe(expected[i]);
	}
});

test('insertGreatestCommonDivisors', () => {
	let input0 = [[18, 6, 10, 3], [7]];
	let expected = [[18, 6, 6, 2, 10, 1, 3], [7]];
	for (let i = 0; i < input0.length; i++) {
		let output = solution.insertGreatestCommonDivisors(solution.ListNode.array_to_list(input0[i]));
		expect(solution.ListNode.list_to_array(output)).toStrictEqual(expected[i]);
	}
});

//var time_ms = 0
//if (optimize_time) {
//	var start = performance.now()
//	for (let cnt = 0; cnt < 100000; cnt++) {
//		for (let i = 0; i < input0.length; i++) {
//			var output = insertGreatestCommonDivisors(input0[i])
//		}
//	}
//	var end = performance.now()
//	time_ms += end - start
//}
