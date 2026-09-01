import { expect, test } from '@jest/globals';
import * as solution from '../src/minimumOperations';

test('Example 1', () => {
	let input = [1, 2, 3, 4];
	let expected = 3;
	expect(solution.minimumOperations(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = [3, 6, 9];
	let expected = 0;
	expect(solution.minimumOperations(input)).toEqual(expected);
});
