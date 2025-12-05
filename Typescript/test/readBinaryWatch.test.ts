import { expect, test } from '@jest/globals';
import * as solution from '../src/readBinaryWatch';

test('Example 1', () => {
	let input = 1;
	let expected = ["0:01","0:02","0:04","0:08","0:16","0:32","1:00","2:00","4:00","8:00"];
	expect(solution.readBinaryWatch(input)).toEqual(expected);
});

test('Example 2', () => {
	let input = 9;
	let expected = [];
	expect(solution.readBinaryWatch(input)).toEqual(expected);
});
