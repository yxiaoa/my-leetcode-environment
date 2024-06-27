import {expect, jest, test} from '@jest/globals';
import test_add from '../src/Solution';

test('hello world test', () => {
    expect(test_add(2,3)).toBe(5);
});
