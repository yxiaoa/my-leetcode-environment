import { expect, test } from '@jest/globals';
import * as solution from '../src/uniqueMorseRepresentations';

test('Example 1', () => {
	let input = ["gin", "zen", "gig", "msg"];
	let expected = 2;
	expect(solution.uniqueMorseRepresentations(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = ["a"];
	let expected = 1;
	expect(solution.uniqueMorseRepresentations(input)).toEqual(expected);
});
