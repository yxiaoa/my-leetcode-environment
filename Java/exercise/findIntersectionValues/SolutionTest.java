package exercise.findIntersectionValues;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_findIntersectionValues() {
		int[][] input0 = { { 2, 3, 2 }, { 4, 3, 2, 3, 1 }, { 3, 4, 2, 3 } };
		int[][] input1 = { { 1, 2 }, { 2, 2, 5, 2, 3, 6 }, { 1, 5 } };
		int[][] expect = { { 2, 1 }, { 3, 4 }, { 0, 0 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.findIntersectionValues(input0[i], input1[i]));
		}
	}
}
