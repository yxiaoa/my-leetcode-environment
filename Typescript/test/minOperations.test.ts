import { expect, test } from '@jest/globals';
import * as solution from '../src/minOperations';

test('Example 1', () => {
	let input0 = [3, 9, 7];
	let input1 = 5;
	let expected = 4;
	expect(solution.minOperations(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = [4, 1, 3];
	let input1 = 4;
	let expected = 0;
	expect(solution.minOperations(input0, input1)).toEqual(expected);
});

test('Example 3', () => {
	let input0 = [3, 2];
	let input1 = 6;
	let expected = 5;
	expect(solution.minOperations(input0, input1)).toEqual(expected);
});
