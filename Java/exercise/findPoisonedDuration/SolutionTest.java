package exercise.findPoisonedDuration;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_findPoisonedDuration() {
		int[][] input0 = { { 1, 4 }, { 1, 2 } };
		int[] input1 = { 2, 2 };
		int[] expect = { 4, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.findPoisonedDuration(input0[i], input1[i]));
		}
	}
}
