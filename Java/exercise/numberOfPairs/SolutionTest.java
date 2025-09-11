package exercise.numberOfPairs;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void testnumberOfPairs() {
		int[][] input0 = { { 1, 3, 4 }, { 1, 2, 4, 12 } };
		int[][] input1 = { { 1, 3, 4 }, { 2, 4 } };
		int[] input2 = { 1, 3 };
		int[] expect = { 5, 2 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.numberOfPairs(input0[i], input1[i], input2[i]));
		}
	}
}
