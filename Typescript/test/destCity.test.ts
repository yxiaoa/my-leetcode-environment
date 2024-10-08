import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/destCity';

test('destCity Example 1', () => {
	let input0 = [["London", "New York"], ["New York", "Lima"], ["Lima", "Sao Paulo"]];
	let expected = "Sao Paulo";
	expect(solution.destCity(input0)).toBe(expected);
});

test('destCity Example 2', () => {
	let input0 = [["B", "C"], ["D", "B"], ["C", "A"]];
	let expected = "A";
	expect(solution.destCity(input0)).toBe(expected);
});

test('destCity Example 3', () => {
	let input0 = [["A", "Z"]]
	let expected = "Z";
	expect(solution.destCity(input0)).toBe(expected);
});
