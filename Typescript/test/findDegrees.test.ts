import { expect, test } from '@jest/globals';
import * as solution from '../src/findDegrees';

test('Example 1', () => {
	let input = [[0,1,1],[1,0,1],[1,1,0]];
	let expected = [2,2,2];
	expect(solution.findDegrees(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [[0,1,0],[1,0,0],[0,0,0]];
	let expected = [1,1,0];
	expect(solution.findDegrees(input)).toEqual(expected);
});

test('Example 3', () => {
	let input = [[0]];
	let expected = [0];
	expect(solution.findDegrees(input)).toEqual(expected);
});
