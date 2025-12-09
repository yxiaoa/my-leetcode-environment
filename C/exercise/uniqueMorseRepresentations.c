
#include "uniqueMorseRepresentations.h"
#include <string.h>

/**
 * 1 <= words.length <= 100
 * 1 <= words[i].length <= 12
 */
int uniqueMorseRepresentations(char **words, int wordsSize)
{
	const char *morseCode[] = {".-",   "-...", "-.-.", "-..",  ".",   "..-.", "--.",  "....", "..",
	                           ".---", "-.-",  ".-..", "--",   "-.",  "---",  ".--.", "--.-", ".-.",
	                           "...",  "-",    "..-",  "...-", ".--", "-..-", "-.--", "--.."};
	char transformations[100][48] = {{'\0'}};
	int uniqueCount = 0;
	for (int i = 0; i < wordsSize; i++) {
		char transformation[48] = {'\0'};
		for (const char *letter = words[i]; *letter != '\0'; letter++) {
			(void)strcat(transformation, morseCode[*letter - 'a']);
		}
		int isUnique = 1;
		for (int j = 0; j < uniqueCount; j++) {
			if (strcmp(transformations[j], transformation) == 0) {
				isUnique = 0;
				break;
			}
		}
		if (isUnique != 0) {
			(void)strcpy(transformations[uniqueCount], transformation);
			uniqueCount++;
		}
	}
	return uniqueCount;
}
