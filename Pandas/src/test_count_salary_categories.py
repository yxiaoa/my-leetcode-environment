import pandas as pd
import unittest
from exercise.count_salary_categories import count_salary_categories


class TestSelectFirstRows(unittest.TestCase):
    def test_count_salary_categories(self):
        data = {'account_id': [3, 2, 8, 6],
                'income': [108939, 12747, 87709, 91769]}
        expected_result = pd.DataFrame({'category': ['Low Salary', 'Average Salary', 'High Salary'],
                                        'accounts_count': [1, 0, 3]})

        df = pd.DataFrame(data)
        result = count_salary_categories(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
