import pandas as pd
import unittest
from exercise.exchange_seats import exchange_seats


class TestExchangeSeats(unittest.TestCase):
    def test_exchange_seats_example1(self):
        data = {'id':[1,2,3,4,5],'student':['Abbot','Doris','Emerson','Green','Jeames']}
        expected_result = pd.DataFrame({'id':[1,2,3,4,5],'student':['Doris','Abbot','Green','Emerson','Jeames']})

        df = pd.DataFrame(data)
        result = exchange_seats(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
