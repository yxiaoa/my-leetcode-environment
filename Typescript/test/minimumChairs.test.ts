import { expect, test } from '@jest/globals';
import * as solution from '../src/minimumChairs';

test('minimumChairs Example 1', () => {
	let input0 = "EEEEEEE";
	let expected = 7;
	expect(solution.minimumChairs(input0)).toBe(expected);
});

test('minimumChairs Example 2', () => {
	let input0 = "ELELEEL";
	let expected = 2;
	expect(solution.minimumChairs(input0)).toBe(expected);
});

test('minimumChairs Example 3', () => {
	let input0 = "ELEELEELLL";
	let expected = 3;
	expect(solution.minimumChairs(input0)).toBe(expected);
});
