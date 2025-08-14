package exercise.canAliceWin;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int[] input = { 1, 2, 3, 4, 10 };
		boolean expect = false;
		Solution sln = new Solution();
		assertEquals(expect, sln.canAliceWin(input)); //TODO fix the warning
	}

	@Test
	public void test_example_2() {
		int[] input = { 1, 2, 3, 4, 5, 14 };
		boolean expect = true;
		Solution sln = new Solution();
		assertEquals(expect, sln.canAliceWin(input));
	}

	@Test
	public void test_example_3() {
		int[] input = { 5, 5, 5, 25 };
		boolean expect = true;
		Solution sln = new Solution();
		assertEquals(expect, sln.canAliceWin(input));
	}

}
