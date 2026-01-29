import pandas as pd
import unittest
from exercise.order_scores import order_scores


class TestOrderScores(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Scores table:
        +----+-------+
        | id | score |
        +----+-------+
        | 1  | 3.50  |
        | 2  | 3.65  |
        | 3  | 4.00  |
        | 4  | 3.85  |
        | 5  | 4.00  |
        | 6  | 3.65  |
        +----+-------+
        Output:
        +-------+------+
        | score | rank |
        +-------+------+
        | 4.00  | 1    |
        | 4.00  | 1    |
        | 3.85  | 2    |
        | 3.65  | 3    |
        | 3.65  | 3    |
        | 3.50  | 4    |
        +-------+------+
        '''
        input = {'id': [1, 2, 3, 4, 5, 6],
                 'score': [3.50, 3.65, 4.00, 3.85, 4.00, 3.65]}
        expected = {'score': [4.00, 4.00, 3.85, 3.65, 3.65, 3.50],
                    'rank': [1, 1, 2, 3, 3, 4]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = order_scores(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
