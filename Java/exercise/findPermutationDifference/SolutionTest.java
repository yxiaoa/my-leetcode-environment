package exercise.findPermutationDifference;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String input0 = "abc";
		String input1 = "bac";
		int expect = 2;
		Solution sln = new Solution();
		assertEquals(expect, sln.findPermutationDifference(input0, input1));
	}

	@Test
	public void test_example_2() {
		String input0 = "abcde";
		String input1 = "edbac";
		int expect = 12;
		Solution sln = new Solution();
		assertEquals(expect, sln.findPermutationDifference(input0, input1));
	}
}
