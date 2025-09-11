package exercise.stableMountains;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void teststableMountains() {
		int[][] input0 = { { 1, 2, 3, 4, 5 }, { 10, 1, 10, 1, 10 }, { 10, 1, 10, 1, 10 } };
		int[] input1 = { 2, 3, 10 };
		int[][] expect = { { 3, 4 }, { 1, 3 }, {} };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i],
					sln.stableMountains(input0[i], input1[i]).stream().mapToInt(Integer::intValue)
							.toArray());
		}
	}
}
