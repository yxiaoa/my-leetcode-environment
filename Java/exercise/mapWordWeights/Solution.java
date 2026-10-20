package exercise.mapWordWeights;

public class Solution {
    public String mapWordWeights(String[] words, int[] weights) {
	StringBuilder result = new StringBuilder();
	for (int i = 0; i < words.length; i++) {
	    int weightSum = 0;
	    for (int j = 0; j < words[i].length(); j++) {
		weightSum += weights[words[i].charAt(j) - 'a'];
	    }
	    result.append((char) (25 + 'a' - (weightSum % 26)));
	}
	return result.toString();
    }
}
