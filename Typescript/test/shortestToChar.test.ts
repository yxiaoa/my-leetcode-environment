import { expect, test } from '@jest/globals';
import * as solution from '../src/shortestToChar';

test('Example 1', () => {
	let input0 = "loveleetcode";
	let input1 = "e";
	let expected = [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0];
	expect(solution.shortestToChar(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = "aaab";
	let input1 = "b";
	let expected = [3, 2, 1, 0];
	expect(solution.shortestToChar(input0, input1)).toEqual(expected);
});
