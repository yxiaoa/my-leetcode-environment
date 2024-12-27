import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/twoSum';

test('twoSum Example 1', () => {
	let input0 = [2,7,11,15];
	let input1 = 9;
	let expected = [0,1];
	expect(solution.twoSum(input0, input1)).toStrictEqual(expected);
});

test('twoSum Example 2', () => {
	let input0 = [3,2,4];
	let input1 = 6;
	let expected = [1,2];
	expect(solution.twoSum(input0, input1)).toStrictEqual(expected);
});

test('twoSum Example 3', () => {
	let input0 = [3,3];
	let input1 = 6;
	let expected = [0,1];
	expect(solution.twoSum(input0, input1)).toStrictEqual(expected);
});
