import pandas as pd
import unittest
from exercise.createDataframe import createDataframe

'''
Input:
student_data:
[
  [1, 15],
  [2, 11],
  [3, 11],
  [4, 20]
]
Output:
+------------+-----+
| student_id | age |
+------------+-----+
| 1          | 15  |
| 2          | 11  |
| 3          | 11  |
| 4          | 20  |
+------------+-----+
Explanation:
A DataFrame was created on top of student_data, with two columns named student_id and age.
'''


class TestCreateDataframe(unittest.TestCase):
    def test_example1(self):
        student_data = [
            [1, 15],
            [2, 11],
            [3, 11],
            [4, 20]
        ]
        expected_result = pd.DataFrame({
            'student_id': [1, 2, 3, 4],
            'age': [15, 11, 11, 20]
        })
        result = createDataframe(student_data)
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
