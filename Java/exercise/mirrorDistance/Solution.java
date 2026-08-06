package exercise.mirrorDistance;

public class Solution {
    public int mirrorDistance(int n) {
	int rev = 0;
	int ori = n;
	while (ori > 0) {
	    rev = rev * 10 + ori % 10;
	    ori /= 10;
	}
	return Math.abs(n - rev);
    }
}
