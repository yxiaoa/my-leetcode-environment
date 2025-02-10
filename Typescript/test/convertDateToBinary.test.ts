import { expect, test } from '@jest/globals';
import * as solution from '../src/convertDateToBinary';

test('convertDateToBinary Example 1', () => {
	let input0 = "2080-02-29";
	let expected = "100000100000-10-11101";
	let output = solution.convertDateToBinary(input0);
	expect(output).toStrictEqual(expected);
});

test('convertDateToBinary Example 2', () => {
	let input0 = "1900-01-01";
	let expected = "11101101100-1-1";
	let output = solution.convertDateToBinary(input0);
	expect(output).toStrictEqual(expected);
});
