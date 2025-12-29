import pandas as pd
import unittest
from exercise.dropMissingData import dropMissingData


class TestDropMissingData(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:
        +------------+---------+-----+
        | student_id | name    | age |
        +------------+---------+-----+
        | 32         | Piper   | 5   |
        | 217        | None    | 19  |
        | 779        | Georgia | 20  |
        | 849        | Willow  | 14  |
        +------------+---------+-----+
        Output:
        +------------+---------+-----+
        | student_id | name    | age |
        +------------+---------+-----+
        | 32         | Piper   | 5   |
        | 779        | Georgia | 20  |
        | 849        | Willow  | 14  |
        +------------+---------+-----+
        '''
        input = {'student_id': [32, 217, 779, 849],
                 'name': ['Piper', None, 'Georgia', 'Willow'],
                 'age': [5, 19, 20, 14]}
        expected = {'student_id': [32, 779, 849], 'name': ['Piper', 'Georgia', 'Willow'], 'age': [5, 20, 14]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = dropMissingData(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
