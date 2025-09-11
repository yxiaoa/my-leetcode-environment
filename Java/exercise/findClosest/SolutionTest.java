package exercise.findClosest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_findClosest() {
		int[] input0 = { 2, 2, 1 };
		int[] input1 = { 7, 5, 5 };
		int[] input2 = { 4, 6, 3 };
		int[] expect = { 1, 2, 0 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.findClosest(input0[i], input1[i], input2[i]));
		}
	}
}
