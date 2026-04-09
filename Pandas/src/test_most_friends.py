import pandas as pd
import unittest
from exercise.most_friends import most_friends


class TestMostFriends(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        RequestAccepted table:
        +--------------+-------------+-------------+
        | requester_id | accepter_id | accept_date |
        +--------------+-------------+-------------+
        | 1            | 2           | 2016/06/03  |
        | 1            | 3           | 2016/06/08  |
        | 2            | 3           | 2016/06/08  |
        | 3            | 4           | 2016/06/09  |
        +--------------+-------------+-------------+
        Output:
        +----+-----+
        | id | num |
        +----+-----+
        | 3  | 3   |
        +----+-----+
        '''
        input = {'requester_id': [1, 1, 2, 3],
                 'accepter_id': [2, 3, 3, 4],
                 'accept_date': ['2016/06/03', '2016/06/08', '2016/06/08', '2016/06/09']}
        expected = {'id': [3], 'num': [3]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = most_friends(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
