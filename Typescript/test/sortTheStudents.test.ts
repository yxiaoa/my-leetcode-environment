import { expect, test } from '@jest/globals';
import * as solution from '../src/sortTheStudents';

test('Example 1', () => {
	let input0 = [[10, 6, 9, 1], [7, 5, 11, 2], [4, 8, 3, 15]];
	let input1 = 2;
	let expected = [[7, 5, 11, 2], [10, 6, 9, 1], [4, 8, 3, 15]];
	expect(solution.sortTheStudents(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = [[3, 4], [5, 6]];
	let input1 = 0;
	let expected = [[5, 6], [3, 4]];
	expect(solution.sortTheStudents(input0, input1)).toEqual(expected);
});
