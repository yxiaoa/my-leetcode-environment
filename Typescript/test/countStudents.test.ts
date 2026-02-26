import { expect, test } from '@jest/globals';
import * as solution from '../src/countStudents';

test('Example 1', () => {
	let input0 = [1, 1, 0, 0];
	let input1 = [0, 1, 0, 1]
	let expected = 0;
	expect(solution.countStudents(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = [1, 1, 1, 0, 0, 1];
	let input1 = [1, 0, 0, 0, 1, 1]
	let expected = 3;
	expect(solution.countStudents(input0, input1)).toEqual(expected);
});
