import { expect, test } from '@jest/globals';
import * as solution from '../src/digitFrequencyScore';

test('Example 1', () => {
	let input = 122;
	let expected = 5;
	expect(solution.digitFrequencyScore(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = 101;
	let expected = 2;
	expect(solution.digitFrequencyScore(input)).toEqual(expected);
});
