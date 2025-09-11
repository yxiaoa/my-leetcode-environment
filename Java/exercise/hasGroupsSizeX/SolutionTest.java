package exercise.hasGroupsSizeX;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_hasGroupsSizeX() {
		int[][] input0 = { { 1, 2, 3, 4, 4, 3, 2, 1 }, { 1, 1, 1, 2, 2, 2, 3, 3 } };
		boolean[] expect = { true, false };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.hasGroupsSizeX(input0[i]));
		}
	}
}
