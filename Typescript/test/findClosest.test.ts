import { expect, test } from '@jest/globals';
import * as solution from '../src/findClosest';

test('findClosest Example 1', () => {
	expect(solution.findClosest(2, 7, 4)).toBe(1);
});

test('findClosest Example 2', () => {
	expect(solution.findClosest(2, 5, 6)).toBe(2);
});

test('findClosest Example 3', () => {
	expect(solution.findClosest(1, 5, 3)).toBe(0);
});
