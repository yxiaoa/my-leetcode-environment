#include "uncommonFromSentences.h"
#include <stdlib.h>
#include <string.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
typedef struct {
	char *word;
	int count;
} word_count_t;

void add_word(word_count_t *words, int *count, char *word)
{
	for (int i = 0; i < *count; i++) {
		if (strcmp(words[i].word, word) == 0) {
			words[i].count++;
			return;
		}
	}
	words[*count].word = word;
	words[*count].count = 1;
	(*count)++;
}

char **uncommonFromSentences(char *s1, char *s2, int *returnSize)
{
	int count = 0, ret_count = 0;
	char **ret = NULL;
	char *s1_buf = strdup(s1);
	char *s2_buf = strdup(s2);
	word_count_t *words = (word_count_t *)malloc(400 * sizeof(word_count_t));
	char *word;

	for (word = strtok(s1_buf, " "); word != NULL; word = strtok(NULL, " ")) {
		add_word(words, &count, word);
	}
	for (word = strtok(s2_buf, " "); word != NULL; word = strtok(NULL, " ")) {
		add_word(words, &count, word);
	}

	for (int i = 0; i < count; i++) {
		if (words[i].count == 1) {
			ret = (char **)realloc(ret, (ret_count + 1) * sizeof(char *));
			ret[ret_count] = strdup(words[i].word);
			ret_count++;
		}
	}

	*returnSize = ret_count;
	free(s1_buf);
	free(s2_buf);
	free(words);
	return ret;
}
