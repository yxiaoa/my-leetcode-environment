#include "findPermutationDifference.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int findPermutationDifference(char *s, char *t)
{
	int map[26] = {0}, diff = 0;
	for (int i = 0; s[i] != '\0'; i++) {
		map[s[i] - 'a'] = i;
	}
	for (int i = 0; t[i] != '\0'; i++) {
		diff += abs(map[t[i] - 'a'] - i);
	}
	return diff;
}
