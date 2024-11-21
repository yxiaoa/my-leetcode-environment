import pandas as pd
import unittest
from exercise.last_passenger import last_passenger


class TestSelectFirstRows(unittest.TestCase):
    def test_last_passenger(self):
        data = {'person_id ': [5, 4, 3, 6, 1, 2],
                'person_name': ['Alice', 'Bob', 'Alex', 'John Cena', 'Winston', 'Marie'],
                'weight': [250, 175, 350, 400, 500, 200],
                'turn': [1, 5, 2, 3, 6, 4]}
        expected_result = pd.DataFrame({'person_name': ['John Cena']})

        df = pd.DataFrame(data)
        result = last_passenger(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
