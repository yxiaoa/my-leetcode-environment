package exercise.maxFreqSum;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_maxFreqSum() {
		String[] input0 = {
				"successes",
				"aeiaeia"
		};
		int[] expect = { 6, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.maxFreqSum(input0[i]));
		}
	}
}
