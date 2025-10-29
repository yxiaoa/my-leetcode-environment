package exercise.isBalanced;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String input = "1234";
		boolean expect = false;
		Solution sln = new Solution();
		assertEquals(expect, sln.isBalanced(input));
	}

	@Test
	public void test_example_2() {
		String input = "24123";
		boolean expect = true;
		Solution sln = new Solution();
		assertEquals(expect, sln.isBalanced(input));
	}
}
