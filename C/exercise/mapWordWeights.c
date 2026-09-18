
#include "mapWordWeights.h"
#include <stdlib.h>

char* mapWordWeights(char** words, int wordsSize, int* weights, int weightsSize) {
	char *ret = (char *)malloc((wordsSize + 1) * sizeof(char));
	for (int i = 0; i < wordsSize; i++) {
		int sum = 0;
		for (int j =0; words[i][j] != '\0'; j++) {
			sum += weights[words[i][j] - 'a'];
		}
		ret[i] = 'a' + 25 - (sum % 26);
	}
	ret[wordsSize] = '\0';
	return ret;
}
