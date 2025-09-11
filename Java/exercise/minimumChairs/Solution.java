package exercise.minimumChairs;

public class Solution {
	public int minimumChairs(String s) {
		int cnt = 0;
		int max = 0;
		for (char c : s.toCharArray()) {
			if (c == 'E') {
				cnt++;
				max = Math.max(max, cnt);
			} else {
				cnt--;
			}
		}
		return max;
	}
}
