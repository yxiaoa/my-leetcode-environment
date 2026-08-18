import { expect, test } from '@jest/globals';
import * as solution from '../src/subarraySum';

test('Example 1', () => {
	let input = [2, 3, 1];
	let expected = 11;
	expect(solution.subarraySum(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [3, 1, 1, 2];
	let expected = 13;
	expect(solution.subarraySum(input)).toEqual(expected);
});
