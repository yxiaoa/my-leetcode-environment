import { expect, test } from '@jest/globals';
import * as solution from '../src/alternatingSum';

test('Example 1', () => {
	let input = [1, 3, 5, 7];
	let expected = -4;
	expect(solution.alternatingSum(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [100];
	let expected = 100;
	expect(solution.alternatingSum(input)).toEqual(expected);
});
