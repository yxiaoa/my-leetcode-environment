import { expect, test } from '@jest/globals';
import * as solution from '../src/getSneakyNumbers';

test('Example 1', () => {
	let input = [0, 1, 1, 0];
	let expected = [0, 1];
	let output = solution.getSneakyNumbers(input).sort((a, b) => a - b);
	expect(output).toEqual(expected);
});

test('Example 2', () => {
	let input = [0, 3, 2, 1, 3, 2]
	let expected = [2, 3];
	let output = solution.getSneakyNumbers(input).sort((a, b) => a - b);
	expect(output).toEqual(expected);
});

test('Example 3', () => {
	let input = [7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2];
	let expected = [4, 5];
	let output = solution.getSneakyNumbers(input).sort((a, b) => a - b);
	expect(output).toEqual(expected);
});
