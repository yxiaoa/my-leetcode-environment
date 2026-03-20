import pandas as pd
import unittest
from exercise.confirmation_rate import confirmation_rate


class TestConfirmationRate(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Signups table:
        +---------+---------------------+
        | user_id | time_stamp          |
        +---------+---------------------+
        | 3       | 2020-03-21 10:16:13 |
        | 7       | 2020-01-04 13:57:59 |
        | 2       | 2020-07-29 23:09:44 |
        | 6       | 2020-12-09 10:39:37 |
        +---------+---------------------+
        Confirmations table:
        +---------+---------------------+-----------+
        | user_id | time_stamp          | action    |
        +---------+---------------------+-----------+
        | 3       | 2021-01-06 03:30:46 | timeout   |
        | 3       | 2021-07-14 14:00:00 | timeout   |
        | 7       | 2021-06-12 11:57:29 | confirmed |
        | 7       | 2021-06-13 12:58:28 | confirmed |
        | 7       | 2021-06-14 13:59:27 | confirmed |
        | 2       | 2021-01-22 00:00:00 | confirmed |
        | 2       | 2021-02-28 23:59:59 | timeout   |
        +---------+---------------------+-----------+
        Output:
        +---------+-------------------+
        | user_id | confirmation_rate |
        +---------+-------------------+
        | 6       | 0.00              |
        | 3       | 0.00              |
        | 7       | 1.00              |
        | 2       | 0.50              |
        +---------+-------------------+
        '''
        input = {'signups': {'user_id': [3, 7, 2, 6],
                             'time_stamp': ['2020-03-21 10:16:13', '2020-01-04 13:57:59', '2020-07-29 23:09:44', '2020-12-09 10:39:37']},
                 'confirmations': {'user_id': [3, 3, 7, 7, 7, 2, 2],
                                   'time_stamp': ['2021-01-06 03:30:46', '2021-07-14 14:00:00', '2021-06-12 11:57:29', '2021-06-13 12:58:28', '2021-06-14 13:59:27', '2021-01-22 00:00:00', '2021-02-28 23:59:59'],
                                   'action': ['timeout', 'timeout', 'confirmed', 'confirmed', 'confirmed', 'confirmed', 'timeout']}}

        expected = {'user_id': [3, 7, 2, 6], 'confirmation_rate': [0.0, 1.0, 0.5, 0.0]}
        expected_df = pd.DataFrame(expected)
        output = confirmation_rate(pd.DataFrame(
            input['signups']),  pd.DataFrame(input['confirmations']))
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
