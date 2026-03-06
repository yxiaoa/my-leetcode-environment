import pandas as pd
import unittest
from exercise.tree_node import tree_node


class TestTreeNode(unittest.TestCase):

    def test_example_1(self):
        '''
        输入：
        Tree table:
        +----+------+
        | id | p_id |
        +----+------+
        | 1  | null |
        | 2  | 1    |
        | 3  | 1    |
        | 4  | 2    |
        | 5  | 2    |
        +----+------+
        输出：
        +----+-------+
        | id | type  |
        +----+-------+
        | 1  | Root  |
        | 2  | Inner |
        | 3  | Leaf  |
        | 4  | Leaf  |
        | 5  | Leaf  |
        +----+-------+
        '''
        input = {'id': [1, 2, 3, 4, 5],
                 'p_id': [None, 1, 1, 2, 2]}
        expected = {'id': [1, 2, 3, 4, 5], 'type': [
            'Root', 'Inner', 'Leaf', 'Leaf', 'Leaf']}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = tree_node(input_df)
        pd.testing.assert_frame_equal(output, expected_df)

    def test_example_2(self):
        '''
        输入：
        Tree table:
        +----+------+
        | id | p_id |
        +----+------+
        | 1  | null |
        +----+------+
        输出：
        +----+-------+
        | id | type  |
        +----+-------+
        | 1  | Root  |
        +----+-------+
        '''
        input = {'id': [1],
                 'p_id': [None]}
        expected = {'id': [1], 'type': ['Root']}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = tree_node(input_df)
        pd.testing.assert_frame_equal(output, expected_df)

if __name__ == '__main__':
    unittest.main()
