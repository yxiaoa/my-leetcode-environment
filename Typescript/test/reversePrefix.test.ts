import { expect, test } from '@jest/globals';
import * as solution from '../src/reversePrefix';

test('Example 1', () => {
	let input0 = "abcd";
	let input1 = 2;
	let expected = "bacd";
	expect(solution.reversePrefix(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = "xyz";
	let input1 = 3;
	let expected = "zyx";
	expect(solution.reversePrefix(input0, input1)).toEqual(expected);
});

test('Example 3', () => {
	let input0 = "hey";
	let input1 = 1;
	let expected = "hey";
	expect(solution.reversePrefix(input0, input1)).toEqual(expected);
});

