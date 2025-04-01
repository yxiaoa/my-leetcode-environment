import pandas as pd
import unittest
from exercise.modify_columns import modifySalaryColumn

''''
Input:
DataFrame employees
+---------+--------+
| name    | salary |
+---------+--------+
| Jack    | 19666  |
| Piper   | 74754  |
| Mia     | 62509  |
| Ulysses | 54866  |
+---------+--------+
Output:
+---------+--------+
| name    | salary |
+---------+--------+
| Jack    | 39332  |
| Piper   | 149508 |
| Mia     | 125018 |
| Ulysses | 109732 |
+---------+--------+
'''


class TestSelectFirstRows(unittest.TestCase):
    def test_modify_columns_example1(self):
        data = {'name': ['Jack', 'Piper', 'Mia', 'Ulysses'],
                'salary': [19666, 74754, 62509, 54866]}
        expected_result = pd.DataFrame({'name': ['Jack', 'Piper', 'Mia', 'Ulysses'],
                                        'salary': [39332, 149508, 125018, 109732]})

        df = pd.DataFrame(data)
        result = modifySalaryColumn(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
