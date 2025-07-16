import pandas as pd
import unittest
from exercise.changeDatatype import changeDatatype

'''
Input:
DataFrame students:
+------------+------+-----+-------+
| student_id | name | age | grade |
+------------+------+-----+-------+
| 1          | Ava  | 6   | 73.0  |
| 2          | Kate | 15  | 87.0  |
+------------+------+-----+-------+
Output:
+------------+------+-----+-------+
| student_id | name | age | grade |
+------------+------+-----+-------+
| 1          | Ava  | 6   | 73    |
| 2          | Kate | 15  | 87    |
+------------+------+-----+-------+
'''


class TestChangeDatatype(unittest.TestCase):
    def test_example1(self):
        data = {'student_id': [1, 2],
                'name': ['Ava', 'Kate'],
                'age': [6, 15],
                'grade': [73.0, 87.0]}
        df = pd.DataFrame(data)
        expected_result = pd.DataFrame({'student_id': [1, 2],
                                        'name': ['Ava', 'Kate'],
                                        'age': [6, 15],
                                        'grade': [73, 87]})
        result = changeDatatype(df)
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
