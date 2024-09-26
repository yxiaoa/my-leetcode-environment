import pandas as pd
import unittest
from exercise.display_the_first_three_rows import *

class TestSelectFirstRows(unittest.TestCase):
    def test_selectFirstRows(self):
        data = {'Name': ['John', 'Jane', 'Mike', 'Emily'],
                'Age': [25, 30, 35, 40],
                'Salary': [50000, 60000, 70000, 80000]}
        expected_result = pd.DataFrame({'Name': ['John', 'Jane', 'Mike'],
                                        'Age': [25, 30, 35],
                                        'Salary': [50000, 60000, 70000]})

        df = pd.DataFrame(data)
        result = selectFirstRows(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
