/**
Input:

Samples table:

+-----------+------------------+-----------+
| sample_id | dna_sequence     | species   |
+-----------+------------------+-----------+
| 1         | ATGCTAGCTAGCTAA  | Human     |
| 2         | GGGTCAATCATC     | Human     |
| 3         | ATATATCGTAGCTA   | Human     |
| 4         | ATGGGGTCATCATAA  | Mouse     |
| 5         | TCAGTCAGTCAG     | Mouse     |
| 6         | ATATCGCGCTAG     | Zebrafish |
| 7         | CGTATGCGTCGTA    | Zebrafish |
+-----------+------------------+-----------+
Output:

+-----------+------------------+-------------+-------------+------------+------------+------------+
| sample_id | dna_sequence     | species     | has_start   | has_stop   | has_atat   | has_ggg    |
+-----------+------------------+-------------+-------------+------------+------------+------------+
| 1         | ATGCTAGCTAGCTAA  | Human       | 1           | 1          | 0          | 0          |
| 2         | GGGTCAATCATC     | Human       | 0           | 0          | 0          | 1          |
| 3         | ATATATCGTAGCTA   | Human       | 0           | 0          | 1          | 0          |
| 4         | ATGGGGTCATCATAA  | Mouse       | 1           | 1          | 0          | 1          |
| 5         | TCAGTCAGTCAG     | Mouse       | 0           | 0          | 0          | 0          |
| 6         | ATATCGCGCTAG     | Zebrafish   | 0           | 1          | 1          | 0          |
| 7         | CGTATGCGTCGTA    | Zebrafish   | 0           | 0          | 0          | 0          |
+-----------+------------------+-------------+-------------+------------+------------+------------+
 */
DROP TABLE IF EXISTS Samples;

CREATE TABLE
	Samples (
		sample_id INT,
		dna_sequence VARCHAR(255),
		species VARCHAR(255)
	);

INSERT INTO
	Samples (sample_id, dna_sequence, species)
VALUES
	(1, 'ATGCTAGCTAGCTAA', 'Human'),
	(2, 'GGGTCAATCATC', 'Human'),
	(3, 'ATATATCGTAGCTA', 'Human'),
	(4, 'ATGGGGTCATCATAA', 'Mouse'),
	(5, 'TCAGTCAGTCAG', 'Mouse'),
	(6, 'ATATCGCGCTAG', 'Zebrafish'),
	(7, 'CGTATGCGTCGTA', 'Zebrafish');
