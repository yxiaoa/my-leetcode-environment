import { expect, test } from '@jest/globals';
import * as solution from '../src/validStrings';

test('Example 1', () => {
	let input = 3;
	let expected = ["010", "011", "101", "110", "111"];
	expect(solution.validStrings(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = 1;
	let expected = ["0", "1"];
	expect(solution.validStrings(input)).toEqual(expected);
});

test('Generated strings never contain adjacent zeros', () => {
	let input = 4;
	let actual = solution.validStrings(input);
	expect(actual.every((value) => !value.includes("00"))).toBe(true);
});
