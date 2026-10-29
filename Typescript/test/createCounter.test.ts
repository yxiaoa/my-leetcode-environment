import { expect, test } from '@jest/globals';
import * as solution from '../src/createCounter';

test('Example 1', () => {
	let input0 = 10;
	let input1 = ["call","call","call"]
	let expected = [10, 11, 12];

	let counter = solution.createCounter(input0);
	let result = input1.map(() => counter());
	expect(result).toEqual(expected);
});

test('Example 2', () => {
	let input0 = -2;
	let input1 = ["call","call","call","call","call"]
	let expected = [-2, -1, 0, 1, 2];

	let counter = solution.createCounter(input0);
	let result = input1.map(() => counter());
	expect(result).toEqual(expected);
});
