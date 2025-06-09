import { expect, test } from '@jest/globals';
import * as solution from '../src/maxFreqSum';

test('Example 1', () => {
	let input = "successes";
	let expected = 6;
	expect(solution.maxFreqSum(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = "aeiaeia";
	let expected = 3;
	expect(solution.maxFreqSum(input)).toEqual(expected);
});
