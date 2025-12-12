package exercise.recoverOrder;

import java.util.HashSet;
import java.util.Set;
import java.util.Arrays;

public class Solution {
	public int[] recoverOrder(int[] order, int[] friends) {
		Set<Integer> friendSet = new HashSet<>();
		for (int friend : friends) {
			friendSet.add(friend);
		}
		return Arrays.stream(order)
				.filter(friendSet::contains)
				.toArray();
	}
}
