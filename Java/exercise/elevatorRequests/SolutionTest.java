package exercise.elevatorRequests;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int input0 = 5;
		int[] input1 = { 2, 1, 4, 3 };
		int expect = 7;
		Solution sln = new Solution();
		assertEquals(expect, sln.elevatorRequests(input0, input1));
	}

	@Test
	public void test_example_2() {
		int input0 = 3;
		int[] input1 = { 2, 0, 0 };
		int expect = 4;
		Solution sln = new Solution();
		assertEquals(expect, sln.elevatorRequests(input0, input1));
	}
}
