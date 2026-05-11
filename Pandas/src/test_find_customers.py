import pandas as pd
import unittest
from exercise.find_customers import find_customers


class TestFindCustomers(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Customer table:
        +-------------+-------------+
        | customer_id | product_key |
        +-------------+-------------+
        | 1           | 5           |
        | 2           | 6           |
        | 3           | 5           |
        | 3           | 6           |
        | 1           | 6           |
        +-------------+-------------+
        Product table:
        +-------------+
        | product_key |
        +-------------+
        | 5           |
        | 6           |
        +-------------+
        Output:
        +-------------+
        | customer_id |
        +-------------+
        | 1           |
        | 3           |
        +-------------+
        '''
        input0 = {'customer_id': [1, 2, 3, 3, 1],
                 'product_key': [5, 6, 5, 6, 6]}
        input1 = {'product_key': [5, 6]}
        expected = {'customer_id': [1, 3]}
        input0_df = pd.DataFrame(input0)
        input1_df = pd.DataFrame(input1)
        expected_df = pd.DataFrame(expected)
        output = find_customers(input0_df, input1_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
