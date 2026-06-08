import pandas as pd
import unittest
from exercise.monthly_transactions import monthly_transactions


class TestMonthlyTransactions(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Transactions table:
        +------+---------+----------+--------+------------+
        | id   | country | state    | amount | trans_date |
        +------+---------+----------+--------+------------+
        | 121  | US      | approved | 1000   | 2018-12-18 |
        | 122  | US      | declined | 2000   | 2018-12-19 |
        | 123  | US      | approved | 2000   | 2019-01-01 |
        | 124  | DE      | approved | 2000   | 2019-01-07 |
        +------+---------+----------+--------+------------+
        Output:
        +----------+---------+-------------+----------------+--------------------+-----------------------+
        | month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
        +----------+---------+-------------+----------------+--------------------+-----------------------+
        | 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
        | 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
        | 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
        +----------+---------+-------------+----------------+--------------------+-----------------------+
        '''
        input = {'id': [121, 122, 123, 124],
                 'country': ['US', 'US', 'US', 'DE'],
                 'state': ['approved', 'declined', 'approved', 'approved'],
                 'amount': [1000, 2000, 2000, 2000],
                 'trans_date': pd.to_datetime(['2018-12-18', '2018-12-19', '2019-01-01', '2019-01-07'])}
        expected = {'month': ['2018-12', '2019-01', '2019-01'],
                    'country': ['US', 'US', 'DE'],
                    'trans_count': [2, 1, 1],
                    'approved_count': [1, 1, 1],
                    'trans_total_amount': [3000, 2000, 2000],
                    'approved_total_amount': [1000, 2000, 2000]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = monthly_transactions(input_df)
        pd.testing.assert_frame_equal(output, expected_df)

    def test_false_1(self):
        '''
        Input:
        Transactions table:
        | id  | country | state    | amount | trans_date |
        | --- | ------- | -------- | ------ | ---------- |
        | 121 | US      | approved | 1000   | 2018-12-18 |
        | 122 | US      | declined | 2000   | 2018-12-19 |
        | 123 | US      | approved | 2000   | 2019-01-01 |
        | 124 | null    | approved | 2000   | 2019-01-07 |
        Output:
        | month   | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
        | ------- | ------- | ----------- | -------------- | ------------------ | --------------------- |
        | 2018-12 | US      | 2           | 1              | 3000               | 1000                  |
        | 2019-01 | US      | 1           | 1              | 2000               | 2000                  |
        | 2019-01 | null    | 1           | 1              | 2000               | 2000                  |
        '''
        input = {'id': [121, 122, 123, 124],
                 'country': ['US', 'US', 'US', None],
                 'state': ['approved', 'declined', 'approved', 'approved'],
                 'amount': [1000, 2000, 2000, 2000],
                 'trans_date': pd.to_datetime(['2018-12-18', '2018-12-19', '2019-01-01', '2019-01-07'])}
        expected = {'month': ['2018-12', '2019-01', '2019-01'],
                    'country': ['US', 'US', None],
                    'trans_count': [2, 1, 1],
                    'approved_count': [1, 1, 1],
                    'trans_total_amount': [3000, 2000, 2000],
                    'approved_total_amount': [1000, 2000, 2000]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = monthly_transactions(input_df)
        pd.testing.assert_frame_equal(output, expected_df)

if __name__ == '__main__':
    unittest.main()
