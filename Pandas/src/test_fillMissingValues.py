import pandas as pd
import unittest
from exercise.fillMissingValues import fillMissingValues


class TestFillMissingValues(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:+-----------------+----------+-------+
        | name            | quantity | price |
        +-----------------+----------+-------+
        | Wristwatch      | None     | 135   |
        | WirelessEarbuds | None     | 821   |
        | GolfClubs       | 779      | 9319  |
        | Printer         | 849      | 3051  |
        +-----------------+----------+-------+
        Output:
        +-----------------+----------+-------+
        | name            | quantity | price |
        +-----------------+----------+-------+
        | Wristwatch      | 0        | 135   |
        | WirelessEarbuds | 0        | 821   |
        | GolfClubs       | 779      | 9319  |
        | Printer         | 849      | 3051  |
        +-----------------+----------+-------+
        Explanation:
        The quantity for Wristwatch and WirelessEarbuds are filled by 0.
        '''
        input = {'name': ['Wristwatch', 'WirelessEarbuds', 'GolfClubs', 'Printer'],
                 'quantity': [None, None, 779, 849],
                 'price': [135, 821, 9319, 3051]}
        expected = {'name': ['Wristwatch', 'WirelessEarbuds', 'GolfClubs', 'Printer'],
                    'quantity': [0, 0, 779, 849],
                    'price': [135, 821, 9319, 3051]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = fillMissingValues(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
