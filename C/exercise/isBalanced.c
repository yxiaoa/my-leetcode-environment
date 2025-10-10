
#include "isBalanced.h"
#include <string.h>

bool isBalanced(char *num)
{
	int sum_odd = 0;
	int sum_even = 0;
	int len = strlen(num);
	for (int i = 0; i < len; i += 2) {
		sum_odd += num[i] - '0';
	}
	for (int i = 1; i < len; i += 2) {
		sum_even += num[i] - '0';
	}
	return sum_odd == sum_even;
}
