import { expect, test } from '@jest/globals';
import * as solution from '../src/mapWordWeights';

test('Example 1', () => {
	let input0 = ["abcd", "def", "xyz"];
	let input1 = [5, 3, 12, 14, 1, 2, 3, 2, 10, 6, 6, 9, 7, 8, 7, 10, 8, 9, 6, 9, 9, 8, 3, 7, 7, 2];
	let expected = "rij";
	expect(solution.mapWordWeights(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = ["a", "b", "c"];
	let input1 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
	let expected = "yyy";
	expect(solution.mapWordWeights(input0, input1)).toEqual(expected);
});

test('Example 3', () => {
	let input0 = ["abcd"];
	let input1 = [7, 5, 3, 4, 3, 5, 4, 9, 4, 2, 2, 7, 10, 2, 5, 10, 6, 1, 2, 2, 4, 1, 3, 4, 4, 5];
	let expected = "g";
	expect(solution.mapWordWeights(input0, input1)).toEqual(expected);
});
