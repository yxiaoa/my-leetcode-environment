package exercise.destCity;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import java.util.*;

public class SolutionTest {
	@Test
	public void testDestCity() {
		String[][][] input0 = { { { "London", "New York" }, { "New York", "Lima" }, { "Lima", "Sao Paulo" } },
				{ { "B", "C" }, { "D", "B" }, { "C", "A" } }, { { "A", "Z" } } };
		String[] expect = { "Sao Paulo", "A", "Z" };
		Solution sln = new Solution();

		for (int i = 0; i < input0.length; i++) {
			List<List<String>> paths = new java.util.ArrayList<>();
			for (String[] path : input0[i]) {
				paths.add(Arrays.asList(path));
			}
			assertEquals(expect[i], sln.destCity(paths));
		}
	}
}
