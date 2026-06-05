package exercise.validStrings;

import java.util.ArrayList;
import java.util.List;

class Solution {
	public List<String> validStrings(int n) {
		List<String> result = new ArrayList<>();
		for (int i = 0; i < (1 << n); i++) {
			if (!containsAdjacentZeros(i, n)) {
				result.add(String.format("%" + n + "s", Integer.toBinaryString(i)).replace(' ', '0'));
			}
		}
		return result;
	}

	private boolean containsAdjacentZeros(int num, int length) {
		boolean ret = false;
		int pre = 1;
		for (int i = 0; i < length; i++) {
			int cur = num & 1;
			if ((cur | pre) == 0) {
				ret = true;
				break;
			}
			pre = cur;
			num >>= 1;
		}
		return ret;
	}
}
