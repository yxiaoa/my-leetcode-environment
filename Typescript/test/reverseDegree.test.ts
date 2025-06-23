import { expect, test } from '@jest/globals';
import * as solution from '../src/reverseDegree';

test('Example 1', () => {
	let input = "abc";
	let expected = 148;
	expect(solution.reverseDegree(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = "zaza";
	let expected = 160;
	expect(solution.reverseDegree(input)).toEqual(expected);
});
