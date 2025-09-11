package exercise.countStudents;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void testcountStudents() {
		int[][] input0 = { { 1, 1, 0, 0 }, { 1, 1, 1, 0, 0, 1 } };
		int[][] input1 = { { 0, 1, 0, 1 }, { 1, 0, 0, 0, 1, 1 } };
		int[] expect = { 0, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.countStudents(input0[i], input1[i]));
		}
	}
}
