
#include "reverseDegree.h"

int reverseDegree(char *s)
{
	int degree = 0;
	for (int i = 0; s[i] != '\0'; i++) {
		degree += (26 - (s[i] - 'a')) * (i + 1);
	}
	return degree;
}
