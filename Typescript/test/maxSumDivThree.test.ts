import { expect, test } from '@jest/globals';
import * as solution from '../src/maxSumDivThree';

test('Example 1', () => {
	let input0 = [3, 6, 5, 1, 8];
	let expected = 18;
	expect(solution.maxSumDivThree(input0)).toBe(expected);
});

test('Example 2', () => {
	let input0 = [4];
	let expected = 0;
	expect(solution.maxSumDivThree(input0)).toBe(expected);
});

test('Example 3', () => {
	let input0 = [1, 2, 3, 4, 4];
	let expected = 12;
	expect(solution.maxSumDivThree(input0)).toBe(expected);
});
