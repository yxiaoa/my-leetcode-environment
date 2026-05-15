import { expect, test } from '@jest/globals';
import * as solution from '../src/concatWithReverse';

test('Example 1', () => {
	let input = [1, 2, 3];
	let expected = [1, 2, 3, 3, 2, 1];
	expect(solution.concatWithReverse(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [1];
	let expected = [1, 1];
	expect(solution.concatWithReverse(input)).toEqual(expected);
});
