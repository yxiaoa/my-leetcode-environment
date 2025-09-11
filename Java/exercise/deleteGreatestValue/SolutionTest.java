package exercise.deleteGreatestValue;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void testDeleteGreatestValue() {
		int[][][] input0 = { { { 1, 2, 4 }, { 3, 3, 1 } }, { { 10 } } };
		int[] expect = { 8, 10 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.deleteGreatestValue(input0[i]));
		}
	}
}
