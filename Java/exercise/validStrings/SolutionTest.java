package exercise.validStrings;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int input0 = 3;
		String[] expect = {"010","011","101","110","111"};
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.validStrings(input0).toArray(new String[0]));
	}

	@Test
	public void test_example_2() {
		int input0 = 1;
		String[] expect = {"0","1"};
		Solution sln = new Solution();
		assertArrayEquals(expect, sln.validStrings(input0).toArray(new String[0]));
	}
}
