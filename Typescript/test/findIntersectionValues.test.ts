import { expect, test } from '@jest/globals';
import * as solution from '../src/findIntersectionValues';

test('Example 1', () => {
	let input1 = [2, 3, 2];
	let input2 = [1, 2];
	let expected = [2, 1];
	expect(solution.findIntersectionValues(input1, input2)).toEqual(expected);
});

test('Example 2', () => {
	let input1 = [4, 3, 2, 3, 1];
	let input2 = [2, 2, 5, 2, 3, 6];
	let expected = [3, 4];
	expect(solution.findIntersectionValues(input1, input2)).toEqual(expected);
});

test('Example 3', () => {
	let input1 = [3, 4, 2, 3];
	let input2 = [1, 5];
	let expected = [0, 0];
	expect(solution.findIntersectionValues(input1, input2)).toEqual(expected);
});
