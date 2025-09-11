package exercise.sumOfTheDigitsOfHarshadNumber;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void testsumOfTheDigitsOfHarshadNumber() {
		int[] input0 = { 18, 23 };
		int[] expect = { 9, -1 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.sumOfTheDigitsOfHarshadNumber(input0[i]));
		}
	}
}
