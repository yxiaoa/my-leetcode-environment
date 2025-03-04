import pandas as pd
import unittest
from exercise.count_employees import count_employees


class TestSelectFirstRows(unittest.TestCase):
    def test_count_employees_example1(self):
        data = {'employee_id': [9, 6, 4, 2],
                'name': ['Hercy', 'Alice', 'Bob', 'Winston'],
                'reports_to': [None, 9, 9, None],
                'age': [43, 41, 36, 37]}
        expected_result = pd.DataFrame({'employee_id': [9],
                                        'name': ['Hercy'],
                                        'reports_count': [2],
                                        'average_age': [39]})

        df = pd.DataFrame(data)
        result = count_employees(df)

        pd.testing.assert_frame_equal(result, expected_result)

    def test_count_employees_fail1(self):
        data = {'employee_id': [1, 2, 3, 4, 5, 6, 7, 8],
                'name': ['Michael', 'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace'],
                'reports_to': [None, 1, 1, 2, 2, 3, None, None],
                'age': [45, 38, 42, 34, 40, 37, 50, 48]}
        expected_result = pd.DataFrame({'employee_id': [1, 2, 3],
                                        'name': ['Michael', 'Alice', 'Bob'],
                                        'reports_count': [2, 2, 1],
                                        'average_age': [40, 37, 37]})

        df = pd.DataFrame(data)
        result = count_employees(df)

        pd.testing.assert_frame_equal(result, expected_result)

    def test_count_employees_fail2(self):
        data = {'employee_id': [9, 6, 8, 1, 10],
                'name': ['Yosef', 'Yehudah', 'Sarah', 'Shimon', 'Freida'],
                'reports_to': [6, 1, 1, None, 8],
                'age': [46, 57, 32, 42, 38]}
        expected_result = pd.DataFrame({'employee_id': [1, 6, 8],
                                        'name': ['Shimon', 'Yehudah', 'Sarah'],
                                        'reports_count': [2, 1, 1],
                                        'average_age': [45, 46, 38]})

        df = pd.DataFrame(data)
        result = count_employees(df)

        pd.testing.assert_frame_equal(result, expected_result)

if __name__ == '__main__':
    unittest.main()
