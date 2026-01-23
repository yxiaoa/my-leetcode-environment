
#include "reversePrefix.h"

char *reversePrefix(char *s, int k)
{
	for (int i = 0; i < (k / 2); i++) {
		char temp = s[i];
		s[i] = s[(k - 1) - i];
		s[(k - 1) - i] = temp;
	}
	return s;
}
