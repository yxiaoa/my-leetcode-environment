import pandas as pd
import unittest
from exercise.find_users_with_high_tokens import find_users_with_high_tokens


class TestSelectData(unittest.TestCase):

    def test_example_1(self):
        '''
        Input:

        prompts table:

        +---------+--------------------------+--------+
        | user_id | prompt                   | tokens |
        +---------+--------------------------+--------+
        | 1       | Write a blog outline     | 120    |
        | 1       | Generate SQL query       | 80     |
        | 1       | Summarize an article     | 200    |
        | 2       | Create resume bullet     | 60     |
        | 2       | Improve LinkedIn bio     | 70     |
        | 3       | Explain neural networks  | 300    |
        | 3       | Generate interview Q&A   | 250    |
        | 3       | Write cover letter       | 180    |
        | 3       | Optimize Python code     | 220    |
        +---------+--------------------------+--------+
        Output:

        +---------+---------------+------------+
        | user_id | prompt_count  | avg_tokens |
        +---------+---------------+------------+
        | 3       | 4             | 237.5      |
        | 1       | 3             | 133.33     |
        +---------+---------------+------------+
        '''
        input = {'user_id': [1, 1, 1, 2, 2, 3, 3, 3, 3],
                 'prompt': ['Write a blog outline', 'Generate SQL query', 'Summarize an article',
                            'Create resume bullet', 'Improve LinkedIn bio',
                            'Explain neural networks', 'Generate interview Q&A', 'Write cover letter', 'Optimize Python code'],
                 'tokens': [120, 80, 200, 60, 70, 300, 250, 180, 220]}
        expected = {'user_id': [3, 1],
                    'prompt_count': [4, 3],
                    'avg_tokens': [237.5, 133.33]}
        expected_df = pd.DataFrame(expected)
        input_df = pd.DataFrame(input)
        output = find_users_with_high_tokens(input_df)
        pd.testing.assert_frame_equal(output, expected_df)


if __name__ == '__main__':
    unittest.main()
