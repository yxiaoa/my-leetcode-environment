package exercise.countStudents;

public class Solution {
	public int countStudents(int[] students, int[] sandwiches) {
		int[] cnt = new int[2];
		for (int i = 0; i < students.length; i++) {
			cnt[students[i]]++;
		}
		for (int i = 0; i < sandwiches.length; i++) {
			if (cnt[sandwiches[i]] == 0) {
				return cnt[0] + cnt[1];
			}
			cnt[sandwiches[i]]--;
		}
		return 0;
	}
}
