package exercise.minCosts;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_minCosts() {
		int[][] input0 = { { 5, 3, 4, 1, 3, 2 }, { 1, 2, 4, 6, 7 } };
		int[][] expect = { { 5, 3, 3, 1, 1, 1 }, { 1, 1, 1, 1, 1 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.minCosts(input0[i]));
		}
	}
}
