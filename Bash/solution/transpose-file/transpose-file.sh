# Read from the file file.txt and print its transposed content to stdout.

awk '
{
	for (i = 1; i <= NF; i++) {
		matrix[NR, i] = $i
	}
	if (NF > max_fields) {
		max_fields = NF
	}
}
END {
	for (i = 1; i <= max_fields; i++) {
		for (j = 1; j <= NR; j++) {
			printf "%s%s", matrix[j, i], (j == NR ? "\n" : " ")
		}
	}
}
' file.txt
