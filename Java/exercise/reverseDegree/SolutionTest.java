package exercise.reverseDegree;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String input = "abc";
		int expect = 148;
		Solution sln = new Solution();
		assertEquals(expect, sln.reverseDegree(input));
	}

	@Test
	public void test_example_2() {
		String input = "zaza";
		int expect = 160;
		Solution sln = new Solution();
		assertEquals(expect, sln.reverseDegree(input));
	}
}
