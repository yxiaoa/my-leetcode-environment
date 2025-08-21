import { expect, test } from '@jest/globals';
import * as solution from '../src/NumArray';

test('Example 1', () => {
	let input0 = ["NumArray","sumRange","sumRange","sumRange"];
	let input1 = [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]];
	let expected = [null, 1, -1, -3];
	let obj = null;
	let output = 0;
	for (let i = 0; i < input0.length; i++) {
		if (input0[i] === "NumArray") {
			obj = new solution.NumArray(input1[i][0] as number[]);
		} else if (input0[i] === "sumRange") {
			output = obj.sumRange(input1[i][0], input1[i][1]);
			expect(output).toEqual(expected[i]);
		}
	}
});

