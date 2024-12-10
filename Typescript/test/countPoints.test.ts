import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/countPoints';

test('countPoints', () => {
	let input0 = [[[1, 3], [3, 3], [5, 3], [2, 2]], [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]];
	let input1 = [[[2, 3, 1], [4, 3, 1], [1, 1, 2]], [[1, 2, 2], [2, 2, 2], [4, 3, 2], [4, 3, 3]]]
	let expected = [[3, 2, 2], [2, 3, 2, 4]];
	for (let i = 0; i < input0.length; i++) {
		let output = solution.countPoints(input0[i], input1[i]);
		expect(output).toStrictEqual(expected[i]);
	}
});
