import { expect, test } from '@jest/globals';
import * as solution from '../src/mirrorDistance';

test('Example 1', () => {
	let input = 25;
	let expected = 27;
	expect(solution.mirrorDistance(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = 10;
	let expected = 9;
	expect(solution.mirrorDistance(input)).toEqual(expected);
});

test('Example 3', () => {
	let input = 7;
	let expected = 0;
	expect(solution.mirrorDistance(input)).toEqual(expected);
});
