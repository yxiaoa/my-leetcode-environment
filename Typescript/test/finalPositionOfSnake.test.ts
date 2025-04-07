import { expect, test } from '@jest/globals';
import * as solution from '../src/finalPositionOfSnake';

test('finalPositionOfSnake Example 1', () => {
	let input0 = 2;
	let input1 = ["RIGHT", "DOWN"]
	let expected = 3;
	let output = solution.finalPositionOfSnake(input0, input1);
	expect(output).toBe(expected);
});

test('finalPositionOfSnake Example 2', () => {
	let input0 = 3;
	let input1 = ["DOWN", "RIGHT", "UP"]
	let expected = 1;
	let output = solution.finalPositionOfSnake(input0, input1);
	expect(output).toBe(expected);
});

test('finalPositionOfSnake Fail 1', () => {
	let input0 = 2;
	let input1 = ["DOWN", "RIGHT", "LEFT"]
	let expected = 2;
	let output = solution.finalPositionOfSnake(input0, input1);
	expect(output).toBe(expected);
});
