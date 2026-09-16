import { expect, test } from '@jest/globals';
import * as solution from '../src/minMoves';

test('Example 1', () => {
	let input = [2, 1, 3];
	let expected = 3;
	expect(solution.minMoves(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [4, 4, 5];
	let expected = 2;
	expect(solution.minMoves(input)).toEqual(expected);
});
