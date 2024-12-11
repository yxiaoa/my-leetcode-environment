#include "makeSmallestPalindrome.h"
#include <string.h>

char *makeSmallestPalindrome(char *s)
{
	int i = 0, j = (int)strlen(s) - 1;
	while (i < j) {
		if (s[i] < s[j]) {
			s[j] = s[i];
		} else {
			s[i] = s[j];
		}
		i++, j--;
	}
	return s;
}
