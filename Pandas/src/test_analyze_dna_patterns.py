import pandas as pd
import unittest
from exercise.analyze_dna_patterns import analyze_dna_patterns

'''
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
'''


class TestAnalyzeDnaPatterns(unittest.TestCase):
    def test_analyze_dna_patterns(self):
        data = {'sample_id': [1, 2, 3, 4, 5, 6, 7],
                'dna_sequence': ['ATGCTAGCTAGCTAA', 'GGGTCAATCATC', 'ATATATCGTAGCTA', 'ATGGGGTCATCATAA', 'TCAGTCAGTCAG', 'ATATCGCGCTAG', 'CGTATGCGTCGTA'],
                'species': ['Human', 'Human', 'Human', 'Mouse', 'Mouse', 'Zebrafish', 'Zebrafish']}
        expected_result = pd.DataFrame({'sample_id': [1, 2, 3, 4, 5, 6, 7],
                                        'dna_sequence': ['ATGCTAGCTAGCTAA', 'GGGTCAATCATC', 'ATATATCGTAGCTA', 'ATGGGGTCATCATAA', 'TCAGTCAGTCAG', 'ATATCGCGCTAG', 'CGTATGCGTCGTA'],
                                        'species': ['Human', 'Human', 'Human', 'Mouse', 'Mouse', 'Zebrafish', 'Zebrafish'],
                                        'has_start': [1, 0, 0, 1, 0, 0, 0],
                                        'has_stop': [1, 0, 0, 1, 0, 1, 0],
                                        'has_atat': [0, 0, 1, 0, 0, 1, 0],
                                        'has_ggg': [0, 1, 0, 1, 0, 0, 0]})

        df = pd.DataFrame(data)
        result = analyze_dna_patterns(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
