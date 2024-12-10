import { expect, jest, test } from '@jest/globals';
import * as solution from '../src/countTestedDevices';

test('countTestedDevices', () => {
	let input0 = [[1, 1, 2, 1, 3], [0, 1, 2]];
	let expected = [3, 2];
	for (let i = 0; i < input0.length; i++) {
		expect(solution.countTestedDevices(input0[i])).toBe(expected[i]);
	}
});
