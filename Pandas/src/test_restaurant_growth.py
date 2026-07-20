import pandas as pd
import unittest
from exercise.restaurant_growth import restaurant_growth


class TestRestaurantGrowth(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Customer table:
        +-------------+--------------+--------------+-------------+
        | customer_id | name         | visited_on   | amount      |
        +-------------+--------------+--------------+-------------+
        | 1           | Jhon         | 2019-01-01   | 100         |
        | 2           | Daniel       | 2019-01-02   | 110         |
        | 3           | Jade         | 2019-01-03   | 120         |
        | 4           | Khaled       | 2019-01-04   | 130         |
        | 5           | Winston      | 2019-01-05   | 110         |
        | 6           | Elvis        | 2019-01-06   | 140         |
        | 7           | Anna         | 2019-01-07   | 150         |
        | 8           | Maria        | 2019-01-08   | 80          |
        | 9           | Jaze         | 2019-01-09   | 110         |
        | 1           | Jhon         | 2019-01-10   | 130         |
        | 3           | Jade         | 2019-01-10   | 150         |
        +-------------+--------------+--------------+-------------+
        Output:
        +--------------+--------------+----------------+
        | visited_on   | amount       | average_amount |
        +--------------+--------------+----------------+
        | 2019-01-07   | 860          | 122.86         |
        | 2019-01-08   | 840          | 120            |
        | 2019-01-09   | 840          | 120            |
        | 2019-01-10   | 1000         | 142.86         |
        +--------------+--------------+----------------+
        '''
        input = {'customer_id': [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 3],
                 'name': ['Jhon', 'Daniel', 'Jade', 'Khaled', 'Winston', 'Elvis', 'Anna', 'Maria', 'Jaze', 'Jhon', 'Jade'],
                 'visited_on': ['2019-01-01', '2019-01-02', '2019-01-03', '2019-01-04', '2019-01-05',
                                '2019-01-06', '2019-01-07', '2019-01-08', '2019-01-09', '2019-01-10',
                                '2019-01-10'],
                 'amount': [100, 110, 120, 130, 110, 140, 150, 80, 110, 130, 150]}
        expected = {'visited_on': ['2019-01-07', '2019-01-08', '2019-01-09', '2019-01-10'],
                    'amount': [860, 840, 840, 1000],
                    'average_amount': [122.86, 120, 120, 142.86]}
        expected_df = pd.DataFrame(expected)
        expected_df['visited_on'] = pd.to_datetime(expected_df['visited_on'])
        input_df = pd.DataFrame(input)
        input_df['visited_on'] = pd.to_datetime(input_df['visited_on'])
        output = restaurant_growth(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
