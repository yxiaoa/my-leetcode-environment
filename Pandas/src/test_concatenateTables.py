import pandas as pd
import unittest
from exercise.concatenateTables import concatenateTables

'''
Input:
df1
+------------+---------+-----+
| student_id | name    | age |
+------------+---------+-----+
| 1          | Mason   | 8   |
| 2          | Ava     | 6   |
| 3          | Taylor  | 15  |
| 4          | Georgia | 17  |
+------------+---------+-----+
df2
+------------+------+-----+
| student_id | name | age |
+------------+------+-----+
| 5          | Leo  | 7   |
| 6          | Alex | 7   |
+------------+------+-----+
Output:
+------------+---------+-----+
| student_id | name    | age |
+------------+---------+-----+
| 1          | Mason   | 8   |
| 2          | Ava     | 6   |
| 3          | Taylor  | 15  |
| 4          | Georgia | 17  |
| 5          | Leo     | 7   |
| 6          | Alex    | 7   |
+------------+---------+-----+
'''


class TestConcatenateTables(unittest.TestCase):
    def test_example1(self):
        data1 = {'student_id': [1, 2, 3, 4],
                 'name': ['Mason', 'Ava', 'Taylor', 'Georgia'],
                 'age': [8, 6, 15, 17]}
        data2 = {'student_id': [5, 6],
                 'name': ['Leo', 'Alex'],
                 'age': [7, 7]}
        expected_result = pd.DataFrame({'student_id': [1, 2, 3, 4, 5, 6],
                                        'name': ['Mason', 'Ava', 'Taylor', 'Georgia', 'Leo', 'Alex'],
                                        'age': [8, 6, 15, 17, 7, 7]})

        df1 = pd.DataFrame(data1)
        df2 = pd.DataFrame(data2)
        result = concatenateTables(df1, df2)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
