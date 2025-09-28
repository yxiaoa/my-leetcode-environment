package exercise.minOperations;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input0 = { 3, 9, 7 };
		int input1 = 5;
		int expect = 4;
		Solution sln = new Solution();
		assertEquals(expect, sln.minOperations(input0, input1));
	}

	@Test
	public void test_example_2() {
		int[] input0 = { 4, 1, 3 };
		int input1 = 4;
		int expect = 0;
		Solution sln = new Solution();
		assertEquals(expect, sln.minOperations(input0, input1));
	}

	@Test
	public void test_example_3() {
		int[] input0 = { 3, 2 };
		int input1 = 6;
		int expect = 5;
		Solution sln = new Solution();
		assertEquals(expect, sln.minOperations(input0, input1));
	}

}
