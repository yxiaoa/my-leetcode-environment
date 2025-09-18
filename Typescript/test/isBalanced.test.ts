import { expect, test } from '@jest/globals';
import * as solution from '../src/isBalanced';

test('Example 1', () => {
	let input = "1234";
	let expected = false;
	expect(solution.isBalanced(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = "24123";
	let expected = true;
	expect(solution.isBalanced(input)).toEqual(expected);
});
