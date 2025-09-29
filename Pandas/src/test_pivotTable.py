import pandas as pd
import unittest
from exercise.pivotTable import pivotTable

'''
Input:
+--------------+----------+-------------+
| city         | month    | temperature |
+--------------+----------+-------------+
| Jacksonville | January  | 13          |
| Jacksonville | February | 23          |
| Jacksonville | March    | 38          |
| Jacksonville | April    | 5           |
| Jacksonville | May      | 34          |
| ElPaso       | January  | 20          |
| ElPaso       | February | 6           |
| ElPaso       | March    | 26          |
| ElPaso       | April    | 2           |
| ElPaso       | May      | 43          |
+--------------+----------+-------------+
Output:
+----------+--------+--------------+
| month    | ElPaso | Jacksonville |
+----------+--------+--------------+
| April    | 2      | 5            |
| February | 6      | 23           |
| January  | 20     | 13           |
| March    | 26     | 38           |
| May      | 43     | 34           |
+----------+--------+--------------+
'''


class TestPivotTable(unittest.TestCase):
    def test_pivot_table(self):
        data = {'city': ['Jacksonville', 'Jacksonville', 'Jacksonville', 'Jacksonville', 'Jacksonville',
                         'ElPaso', 'ElPaso', 'ElPaso', 'ElPaso', 'ElPaso'],
                'month': ['January', 'February', 'March', 'April', 'May',
                          'January', 'February', 'March', 'April', 'May'],
                'temperature': [13, 23, 38, 5, 34, 20, 6, 26, 2, 43]}
        expected_result = pd.DataFrame({'month': ['April', 'February', 'January', 'March', 'May'],
                                        'ElPaso': [2, 6, 20, 26, 43],
                                        'Jacksonville': [5, 23, 13, 38, 34]})
        result = pivotTable(pd.DataFrame(data))
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
