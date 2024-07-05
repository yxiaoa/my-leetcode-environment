import { expect, jest, test } from '@jest/globals';
import { countTestedDevices } from '../src/Solution';

test('countTestedDevices', () => {
	var input0 = [[1, 1, 2, 1, 3], [0, 1, 2]];
	var expected = [3, 2];
	for (let i = 0; i < input0.length; i++) {
		expect(countTestedDevices(input0[i])).toBe(expected[i]);
	}
});
