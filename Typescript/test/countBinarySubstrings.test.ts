import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/countBinarySubstrings';

test('countPoints Example 1', () => {
	let input0 = "00110011";
	let expected = 6;
	let output = solution.countBinarySubstrings(input0);
	expect(output).toStrictEqual(expected);
});

test('countPoints Example 2', () => {
	let input0 = "10101";
	let expected = 4;
	let output = solution.countBinarySubstrings(input0);
	expect(output).toStrictEqual(expected);
});
