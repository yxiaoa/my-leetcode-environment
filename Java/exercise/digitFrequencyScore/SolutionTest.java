package exercise.digitFrequencyScore;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_digitFrequencyScore() {
		int[] input0 = { 122, 101 };
		int[] expect = { 5, 2 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.digitFrequencyScore(input0[i]));
		}
	}
}
