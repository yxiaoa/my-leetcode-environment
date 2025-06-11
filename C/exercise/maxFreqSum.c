
#include "maxFreqSum.h"

int maxFreqSum(char *s)
{
	int freq[26] = {0};
	int max_vowels = 0;
	int max_consonants = 0;
	for (int i = 0; s[i] != '\0'; i++) {
		int index = s[i] - 'a';
		freq[index]++;
		if ((s[i] == 'a') || (s[i] == 'e') || (s[i] == 'i') || (s[i] == 'o') || (s[i] == 'u')) {
			max_vowels = (max_vowels > freq[index]) ? max_vowels : freq[index];
		} else {
			max_consonants = (max_consonants > freq[index]) ? max_consonants : freq[index];
		}
	}
	return max_vowels + max_consonants;
}
