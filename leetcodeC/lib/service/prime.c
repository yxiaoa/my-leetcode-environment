#include "prime.h"

bool isPrime(int n)
{
	bool ret = true;
	for (int i = 2; i * i <= n; i++) {
		if ((n % i) == 0) {
			ret = false;
			break;
		}
	}
	return ret;
}

int countPrime(int n)
{
	int cnt = 0;
	for (int i = 2; i <= n; i++) {
		cnt += isPrime(i);
	}
	return cnt;
}
