import pandas as pd
import unittest
from exercise.sum_daily_odd_even import sum_daily_odd_even

'''
Input:

transactions table:

+----------------+--------+------------------+
| transaction_id | amount | transaction_date |
+----------------+--------+------------------+
| 1              | 150    | 2024-07-01       |
| 2              | 200    | 2024-07-01       |
| 3              | 75     | 2024-07-01       |
| 4              | 300    | 2024-07-02       |
| 5              | 50     | 2024-07-02       |
| 6              | 120    | 2024-07-03       |
+----------------+--------+------------------+

Output:

+------------------+---------+----------+
| transaction_date | odd_sum | even_sum |
+------------------+---------+----------+
| 2024-07-01       | 75      | 350      |
| 2024-07-02       | 0       | 350      |
| 2024-07-03       | 0       | 120      |
+------------------+---------+----------+
'''


class TestSumDailyOddEven(unittest.TestCase):
    def test_example1(self):
        data = {'transaction_id': [1, 2, 3, 4, 5, 6],
                'amount': [150, 200, 75, 300, 50, 120],
                'transaction_date': ['2024-07-01', '2024-07-01', '2024-07-01', '2024-07-02', '2024-07-02', '2024-07-03']}
        df = pd.DataFrame(data)
        expected_result = pd.DataFrame({'transaction_date': ['2024-07-01', '2024-07-02', '2024-07-03'],
                                        'odd_sum': [75, 0, 0],
                                        'even_sum': [350, 350, 120]})
        result = sum_daily_odd_even(df)
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
