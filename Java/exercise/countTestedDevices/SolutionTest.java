package exercise.countTestedDevices;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_countTestedDevices() {
		int[][] input0 = { { 1, 1, 2, 1, 3 }, { 0, 1, 2 } };
		int[] expect = { 3, 2 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.countTestedDevices(input0[i]));
		}
	}
}
