package exercise.sumRange;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String[] input0 = { "NumArray", "sumRange", "sumRange", "sumRange" };
		int[][] input1 = { { -2, 0, 3, -5, 2, -1 }, { 0, 2 }, { 2, 5 }, { 0, 5 } };
		int[] expect = { 0, 1, -1, -3 };

		NumArray numArray = null;
		for (int i = 0; i < input0.length; i++) {
			if (input0[i].equals("NumArray")) {
				numArray = new NumArray(input1[i]);
			} else if (input0[i].equals("sumRange")) {
				assertEquals(expect[i], numArray.sumRange(input1[i][0], input1[i][1]));
			}
		}
	}
}
