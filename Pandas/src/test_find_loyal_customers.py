import pandas as pd
import unittest
from exercise.find_loyal_customers import find_loyal_customers


class TestFindLoyalCustomers(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:

        customer_transactions table:

        +----------------+-------------+------------------+--------+------------------+
        | transaction_id | customer_id | transaction_date | amount | transaction_type |
        +----------------+-------------+------------------+--------+------------------+
        | 1              | 101         | 2024-01-05       | 150.00 | purchase         |
        | 2              | 101         | 2024-01-15       | 200.00 | purchase         |
        | 3              | 101         | 2024-02-10       | 180.00 | purchase         |
        | 4              | 101         | 2024-02-20       | 250.00 | purchase         |
        | 5              | 102         | 2024-01-10       | 100.00 | purchase         |
        | 6              | 102         | 2024-01-12       | 120.00 | purchase         |
        | 7              | 102         | 2024-01-15       | 80.00  | refund           |
        | 8              | 102         | 2024-01-18       | 90.00  | refund           |
        | 9              | 102         | 2024-02-15       | 130.00 | purchase         |
        | 10             | 103         | 2024-01-01       | 500.00 | purchase         |
        | 11             | 103         | 2024-01-02       | 450.00 | purchase         |
        | 12             | 103         | 2024-01-03       | 400.00 | purchase         |
        | 13             | 104         | 2024-01-01       | 200.00 | purchase         |
        | 14             | 104         | 2024-02-01       | 250.00 | purchase         |
        | 15             | 104         | 2024-02-15       | 300.00 | purchase         |
        | 16             | 104         | 2024-03-01       | 350.00 | purchase         |
        | 17             | 104         | 2024-03-10       | 280.00 | purchase         |
        | 18             | 104         | 2024-03-15       | 100.00 | refund           |
        +----------------+-------------+------------------+--------+------------------+
        Output:

        +-------------+
        | customer_id |
        +-------------+
        | 101         |
        | 104         |
        +-------------+
        '''
        input = {'transaction_id': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
                 'customer_id': [101, 101, 101, 101, 102, 102, 102, 102, 102,
                                 103, 103, 103,
                                 104, 104, 104, 104, 104, 104],
                 'transaction_date': ['2024-01-05', '2024-01-15', '2024-02-10', '2024-02-20',
                                      '2024-01-10', '2024-01-12', '2024-01-15', '2024-01-18', '2024-02-15',
                                      '2024-01-01', '2024-01-02', '2024-01-03',
                                      '2024-01-01', '2024-02-01', '2024-02-15', '2024-03-01', '2024-03-10', '2024-03-15'],
                 'amount': [150.00, 200.00, 180.00, 250.00,
                            100.00, 120.00, 80.00, 90.00, 130.00,
                            500.00, 450.00,400.00,
                            200.00,250.00 ,300.00 ,350.00 ,280.00 ,100.00],
                 'transaction_type': ['purchase', 'purchase', 'purchase', 'purchase',
                                      'purchase', 'purchase', 'refund', 'refund', 'purchase',
                                      'purchase', 'purchase', 'purchase',
                                      'purchase', 'purchase', 'purchase', 'purchase', 'purchase', 'refund']}
        expected = {'customer_id': [101, 104]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = find_loyal_customers(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
