import { expect, test } from '@jest/globals';
import * as solution from '../src/canAliceWin';

test('Example 1', () => {
	let input = [1, 2, 3, 4, 10];
	let expected = false;
	expect(solution.canAliceWin(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [1, 2, 3, 4, 5, 14];
	let expected = true;
	expect(solution.canAliceWin(input)).toEqual(expected);
});

test('Example 3', () => {
	let input = [5, 5, 5, 25];
	let expected = true;
	expect(solution.canAliceWin(input)).toEqual(expected);
});
