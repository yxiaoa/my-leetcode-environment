package exercise.findDegrees;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[][] input = { { 0, 1, 1 }, { 1, 0, 1 }, { 1, 1, 0 } };
		int[] expect = { 2, 2, 2 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.findDegrees(input));
	}

	@Test
	public void test_example_2() {
		int[][] input = { { 0, 1, 0 }, { 1, 0, 0 }, { 0, 0, 0 } };
		int[] expect = { 1, 1, 0 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.findDegrees(input));
	}

	@Test
	public void test_example_3() {
		int[][] input = { { 0 } };
		int[] expect = { 0 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.findDegrees(input));
	}
}
