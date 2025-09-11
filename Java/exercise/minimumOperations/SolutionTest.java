package exercise.minimumOperations;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_minimumOperations() {
		int[][] input0 = { { 1, 2, 3, 4 }, { 3, 6, 9 } };
		int[] expect = { 3, 0 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.minimumOperations(input0[i]));
		}
	}
}
