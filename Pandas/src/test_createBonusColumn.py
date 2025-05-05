import pandas as pd
import unittest
from exercise.createBonusColumn import createBonusColumn


class TestCreateBonusColumn(unittest.TestCase):
    def test_example1(self):
        data = {'name': ['Piper', 'Grace', 'Georgia', 'Willow', 'Finn', 'Thomas'],
                'salary': [4548, 28150, 1103, 6593, 74576, 24433]}
        expected_result = pd.DataFrame({'name': ['Piper', 'Grace', 'Georgia', 'Willow', 'Finn', 'Thomas'],
                                        'salary': [4548, 28150, 1103, 6593, 74576, 24433],
                                        'bonus': [9096, 56300, 2206, 13186, 149152, 48866]})

        df = pd.DataFrame(data)
        result = createBonusColumn(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
