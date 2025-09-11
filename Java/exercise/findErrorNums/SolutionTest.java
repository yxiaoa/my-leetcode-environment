package exercise.findErrorNums;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_findErrorNums() {
		int[][] input0 = { { 1, 2, 2, 4 }, { 3, 2, 3, 4, 6, 5 }, { 1, 1 }, { 2, 2 } };
		int[][] expect = { { 2, 3 }, { 3, 1 }, { 1, 2 }, { 2, 1 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.findErrorNums(input0[i]));
		}
	}
}
