import pandas as pd
import unittest
from exercise.get_the_size_of_a_dataframe import getDataframeSize

'''
Input:
+-----------+----------+-----+-------------+--------------------+
| player_id | name     | age | position    | team               |
+-----------+----------+-----+-------------+--------------------+
| 846       | Mason    | 21  | Forward     | RealMadrid         |
| 749       | Riley    | 30  | Winger      | Barcelona          |
| 155       | Bob      | 28  | Striker     | ManchesterUnited   |
| 583       | Isabella | 32  | Goalkeeper  | Liverpool          |
| 388       | Zachary  | 24  | Midfielder  | BayernMunich       |
| 883       | Ava      | 23  | Defender    | Chelsea            |
| 355       | Violet   | 18  | Striker     | Juventus           |
| 247       | Thomas   | 27  | Striker     | ParisSaint-Germain |
| 761       | Jack     | 33  | Midfielder  | ManchesterCity     |
| 642       | Charlie  | 36  | Center-back | Arsenal            |
+-----------+----------+-----+-------------+--------------------+
Output:
[10, 5]
Explanation:
This DataFrame contains 10 rows and 5 columns.
'''


class TestGetDataframeSize(unittest.TestCase):
    def test_get_dataframe_size(self):
        data = {'player_id': [846, 749, 155, 583, 388, 883, 355, 247, 761, 642],
                'name': ['Mason', 'Riley', 'Bob', 'Isabella', 'Zachary', 'Ava', 'Violet', 'Thomas', 'Jack', 'Charlie'],
                'age': [21, 30, 28, 32, 24, 23, 18, 27, 33, 36],
                'position': ['Forward', 'Winger', 'Striker', 'Goalkeeper', 'Midfielder', 'Defender', 'Striker', 'Striker', 'Midfielder', 'Center-back'],
                'team': ['RealMadrid', 'Barcelona', 'ManchesterUnited', 'Liverpool', 'BayernMunich', 'Chelsea', 'Juventus', 'ParisSaint-Germain', 'ManchesterCity', 'Arsenal']}
        expected_result = [10, 5]

        df = pd.DataFrame(data)
        result = getDataframeSize(df)

        self.assertEqual(result, expected_result)


if __name__ == '__main__':
    unittest.main()
