import pandas as pd
import unittest
from exercise.renameColumns import renameColumns

'''
Input:
+----+---------+----------+-----+
| id | first   | last     | age |
+----+---------+----------+-----+
| 1  | Mason   | King     | 6   |
| 2  | Ava     | Wright   | 7   |
| 3  | Taylor  | Hall     | 16  |
| 4  | Georgia | Thompson | 18  |
| 5  | Thomas  | Moore    | 10  |
+----+---------+----------+-----+
Output:
+------------+------------+-----------+--------------+
| student_id | first_name | last_name | age_in_years |
+------------+------------+-----------+--------------+
| 1          | Mason      | King      | 6            |
| 2          | Ava        | Wright    | 7            |
| 3          | Taylor     | Hall      | 16           |
| 4          | Georgia    | Thompson  | 18           |
| 5          | Thomas     | Moore     | 10           |
+------------+------------+-----------+--------------+
Explanation:
The column names are changed accordingly.
'''


class TestRenameColumns(unittest.TestCase):
    def test_rename_columns(self):
        data = {'id': [1, 2, 3, 4, 5],
                'first': ['Mason', 'Ava', 'Taylor', 'Georgia', 'Thomas'],
                'last': ['King', 'Wright', 'Hall', 'Thompson', 'Moore'],
                'age': [6, 7, 16, 18, 10]}
        expected_result = pd.DataFrame({'student_id': [1, 2, 3, 4, 5],
                                        'first_name': ['Mason', 'Ava', 'Taylor', 'Georgia', 'Thomas'],
                                        'last_name': ['King', 'Wright', 'Hall', 'Thompson', 'Moore'],
                                        'age_in_years': [6, 7, 16, 18, 10]})
        df = pd.DataFrame(data)
        result = renameColumns(df)
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
