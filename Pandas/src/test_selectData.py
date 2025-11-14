import pandas as pd
import unittest
from exercise.selectData import selectData


class TestSelectData(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        +------------+---------+-----+
        | student_id | name    | age |
        +------------+---------+-----+
        | 101        | Ulysses | 13  |
        | 53         | William | 10  |
        | 128        | Henry   | 6   |
        | 3          | Henry   | 11  |
        +------------+---------+-----+
        Output:
        +---------+-----+
        | name    | age |
        +---------+-----+
        | Ulysses | 13  |
        +---------+-----+
        '''
        input = {'student_id': [101, 53, 128, 3],
                 'name': ['Ulysses', 'William', 'Henry', 'Henry'],
                 'age': [13, 10, 6, 11]}
        expected = {'name': ['Ulysses'], 'age': [13]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = selectData(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
