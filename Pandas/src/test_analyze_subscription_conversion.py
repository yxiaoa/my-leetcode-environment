import pandas as pd
import unittest
from exercise.analyze_subscription_conversion import analyze_subscription_conversion


class TestAnalyzeSubscriptionConversion(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:

        UserActivity table:

        +---------+---------------+---------------+-------------------+
        | user_id | activity_date | activity_type | activity_duration |
        +---------+---------------+---------------+-------------------+
        | 1       | 2023-01-01    | free_trial    | 45                |
        | 1       | 2023-01-02    | free_trial    | 30                |
        | 1       | 2023-01-05    | free_trial    | 60                |
        | 1       | 2023-01-10    | paid          | 75                |
        | 1       | 2023-01-12    | paid          | 90                |
        | 1       | 2023-01-15    | paid          | 65                |
        | 2       | 2023-02-01    | free_trial    | 55                |
        | 2       | 2023-02-03    | free_trial    | 25                |
        | 2       | 2023-02-07    | free_trial    | 50                |
        | 2       | 2023-02-10    | cancelled     | 0                 |
        | 3       | 2023-03-05    | free_trial    | 70                |
        | 3       | 2023-03-06    | free_trial    | 60                |
        | 3       | 2023-03-08    | free_trial    | 80                |
        | 3       | 2023-03-12    | paid          | 50                |
        | 3       | 2023-03-15    | paid          | 55                |
        | 3       | 2023-03-20    | paid          | 85                |
        | 4       | 2023-04-01    | free_trial    | 40                |
        | 4       | 2023-04-03    | free_trial    | 35                |
        | 4       | 2023-04-05    | paid          | 45                |
        | 4       | 2023-04-07    | cancelled     | 0                 |
        +---------+---------------+---------------+-------------------+
        Output:

        +---------+--------------------+-------------------+
        | user_id | trial_avg_duration | paid_avg_duration |
        +---------+--------------------+-------------------+
        | 1       | 45.00              | 76.67             |
        | 3       | 70.00              | 63.33             |
        | 4       | 37.50              | 45.00             |
        +---------+--------------------+-------------------+
        '''
        input = {'user_id': [1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4],
                 'activity_date': ['2023-01-01', '2023-01-02', '2023-01-05', '2023-01-10', '2023-01-12', '2023-01-15',
                                   '2023-02-01', '2023-02-03', '2023-02-07', '2023-02-10',
                                   '2023-03-05', '2023-03-06', '2023-03-08', '2023-03-12', '2023-03-15', '2023-03-20',
                                   '2023-04-01', '2023-04-03', '2023-04-05', '2023-04-07'],
                 'activity_type': ['free_trial', 'free_trial', 'free_trial', 'paid', 'paid', 'paid',
                                   'free_trial', 'free_trial', 'free_trial', 'cancelled',
                                   'free_trial', 'free_trial', 'free_trial', 'paid', 'paid', 'paid',
                                   'free_trial', 'free_trial', 'paid', 'cancelled'],
                 'activity_duration': [45, 30, 60, 75, 90, 65,
                                       55, 25, 50, 0,
                                       70, 60, 80, 50, 55, 85,
                                       40, 35, 45, 0]}
        expected = {'user_id': [1, 3, 4], 'trial_avg_duration': [45.00, 70.00, 37.50], 'paid_avg_duration': [76.67, 63.33, 45.00]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = analyze_subscription_conversion(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
