import { expect, test } from '@jest/globals';
import * as solution from '../src/findPermutationDifference';

test('findPermutationDifference Example 1', () => {
	let input0 = "abc";
	let input1 = "bac"
	let expected = 2;
	expect(solution.findPermutationDifference(input0, input1)).toBe(expected);
});

test('findPermutationDifference Example 2', () => {
	let input0 = "abcde";
	let input1 = "edbac"
	let expected = 12;
	expect(solution.findPermutationDifference(input0, input1)).toBe(expected);
});

