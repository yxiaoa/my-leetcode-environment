import { expect, test } from '@jest/globals';
import * as solution from '../src/elevatorRequests';

test('Example 1', () => {
	let input0 = 5;
	let input1 = [2, 1, 4, 3];
	let expected = 7;
	expect(solution.elevatorRequests(input0, input1)).toEqual(expected);
});

test('Example 2', () => {
	let input0 = 3;
	let input1 = [2, 0, 0];
	let expected = 4;
	expect(solution.elevatorRequests(input0, input1)).toEqual(expected);
});
