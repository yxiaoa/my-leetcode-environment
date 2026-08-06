package exercise.mirrorDistance;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int input = 25;
		int expect = 27;
		Solution sln = new Solution();
		assertEquals(expect, sln.mirrorDistance(input));
	}

	@Test
	public void test_example_2() {
		int input = 10;
		int expect = 9;
		Solution sln = new Solution();
		assertEquals(expect, sln.mirrorDistance(input));
	}

	@Test
	public void test_example_3() {
		int input = 7;
		int expect = 0;
		Solution sln = new Solution();
		assertEquals(expect, sln.mirrorDistance(input));
	}
}
