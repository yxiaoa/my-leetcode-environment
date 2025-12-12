package exercise.recoverOrder;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input0 = { 3, 1, 2, 5, 4 };
		int[] input1 = { 1, 3, 4 };
		int expect[] = { 3, 1, 4 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.recoverOrder(input0, input1));
	}

	@Test
	public void test_example_2() {
		int[] input0 = { 1, 4, 5, 3, 2 };
		int[] input1 = { 2, 5 };
		int expect[] = { 5, 2 };
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.recoverOrder(input0, input1));
	}
}
