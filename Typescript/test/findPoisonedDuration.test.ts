import { expect, test } from '@jest/globals';
import * as solution from '../src/findPoisonedDuration';

test('Example 1', () => {
	let input0 = [1, 4];
	let input1 = 2;
	let expected = 4;
	expect(solution.findPoisonedDuration(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = [1, 2];
	let input1 = 2;
	let expected = 3;
	expect(solution.findPoisonedDuration(input0, input1)).toEqual(expected);
});
