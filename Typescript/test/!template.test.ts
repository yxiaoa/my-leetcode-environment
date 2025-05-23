import { expect, test } from '@jest/globals';
import * as solution from '../src/minCosts';

test('Example 1', () => {
	let input = [5,3,4,1,3,2];
	let expected = [5,3,3,1,1,1];
	expect(solution.minCosts(input)).toEqual(expected);
});

