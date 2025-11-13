package exercise.alternatingSum;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input = { 1, 3, 5, 7 };
		int expect = -4;
		Solution sln = new Solution();
		assertEquals(expect, sln.alternatingSum(input));
	}

	@Test
	public void test_example_2() {
		int[] input = { 100 };
		int expect = 100;
		Solution sln = new Solution();
		assertEquals(expect, sln.alternatingSum(input));
	}
}
