import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_maximumNumberOfStringPairs() {
		String[][] input0 = {{"cd","ac","dc","ca","zz"}};
		int[] expect = {2};

		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.maximumNumberOfStringPairs(input0[i]));
		}
	}
}
