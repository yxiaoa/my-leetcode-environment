package exercise.concatWithReverse;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input = { 1, 2, 3 };
		int[] expect = { 1, 2, 3, 3, 2, 1 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.concatWithReverse(input));
	}

	@Test
	public void test_example_2() {
		int[] input = { 1 };
		int[] expect = { 1, 1 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.concatWithReverse(input));
	}
}
