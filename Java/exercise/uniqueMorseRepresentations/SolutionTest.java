package exercise.uniqueMorseRepresentations;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String[] input0 = { "gin", "zen", "gig", "msg" };
		int expect = 2;
		Solution sln = new Solution();
		assertEquals(expect, sln.uniqueMorseRepresentations(input0));
	}

	@Test
	public void test_example_2() {
		String[] input0 = { "a" };
		int expect = 1;
		Solution sln = new Solution();
		assertEquals(expect, sln.uniqueMorseRepresentations(input0));
	}
}
