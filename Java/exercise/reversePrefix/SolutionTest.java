package exercise.reversePrefix;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		String input0 = "abcd";
		int input1 = 2;
		String expect = "bacd";
		Solution sln = new Solution();
		assertEquals(expect, sln.reversePrefix(input0, input1));
	}

	@Test
	public void test_example_2() {
		String input0 = "xyz";
		int input1 = 3;
		String expect = "zyx";
		Solution sln = new Solution();
		assertEquals(expect, sln.reversePrefix(input0, input1));
	}

	@Test
	public void test_example_3() {
		String input0 = "hey";
		int input1 = 1;
		String expect = "hey";
		Solution sln = new Solution();
		assertEquals(expect, sln.reversePrefix(input0, input1));
	}
}
