import pandas as pd
import unittest
from exercise.department_highest_salary import department_highest_salary


class TestSelectData(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        Employee table:
        +----+-------+--------+--------------+
        | id | name  | salary | departmentId |
        +----+-------+--------+--------------+
        | 1  | Joe   | 70000  | 1            |
        | 2  | Jim   | 90000  | 1            |
        | 3  | Henry | 80000  | 2            |
        | 4  | Sam   | 60000  | 2            |
        | 5  | Max   | 90000  | 1            |
        +----+-------+--------+--------------+
        Department table:
        +----+-------+
        | id | name  |
        +----+-------+
        | 1  | IT    |
        | 2  | Sales |
        +----+-------+
        Output:
        +------------+----------+--------+
        | Department | Employee | Salary |
        +------------+----------+--------+
        | IT         | Jim      | 90000  |
        | Sales      | Henry    | 80000  |
        | IT         | Max      | 90000  |
        +------------+----------+--------+
        '''
        input0 = {'id': [1, 2, 3, 4, 5],
                 'name': ['Joe', 'Jim', 'Henry', 'Sam', 'Max'],
                 'salary': [70000, 90000, 80000, 60000, 90000],
                 'departmentId': [1, 1, 2, 2, 1]}
        input1 = {'id': [1, 2], 'name': ['IT', 'Sales']}
        expected = {'Department': ['IT', 'Sales', 'IT'],
                    'Employee': ['Jim', 'Henry', 'Max'],
                    'Salary': [90000, 80000, 90000]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input0)
        department_df = pd.DataFrame(input1)
        output = department_highest_salary(input_df, department_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
