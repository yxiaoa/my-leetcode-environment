import { expect, test } from '@jest/globals';
import * as solution from '../src/recoverOrder';

test('Example 1', () => {
	let input = [3, 1, 2, 5, 4];
	let friends = [1, 3, 4];
	let expected = [3, 1, 4];
	expect(solution.recoverOrder(input, friends)).toEqual(expected);
});

test('Example 2', () => {
	let input = [1, 4, 5, 3, 2];
	let friends = [2, 5];
	let expected = [5, 2];
	expect(solution.recoverOrder(input, friends)).toEqual(expected);
});
