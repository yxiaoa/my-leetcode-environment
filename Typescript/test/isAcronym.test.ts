import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/isAcronym';

test('isAcronym Example 1', () => {
	let input0 = ["alice","bob","charlie"];
	let input1 = "abc";
	let expected = true;
	expect(solution.isAcronym(input0, input1)).toBe(expected);
});

test('isAcronym Example 2', () => {
	let input0 = ["an","apple"];
	let input1 = "a";
	let expected = false;
	expect(solution.isAcronym(input0, input1)).toBe(expected);
});

test('isAcronym Example 3', () => {
	let input0 = ["never","gonna","give","up","on","you"];
	let input1 = "ngguoy";
	let expected = true;
	expect(solution.isAcronym(input0, input1)).toBe(expected);
});
