import pandas as pd
import unittest
from exercise.findHeavyAnimals import findHeavyAnimals

'''
Input:
DataFrame animals:
+----------+---------+-----+--------+
| name     | species | age | weight |
+----------+---------+-----+--------+
| Tatiana  | Snake   | 98  | 464    |
| Khaled   | Giraffe | 50  | 41     |
| Alex     | Leopard | 6   | 328    |
| Jonathan | Monkey  | 45  | 463    |
| Stefan   | Bear    | 100 | 50     |
| Tommy    | Panda   | 26  | 349    |
+----------+---------+-----+--------+
Output:
+----------+
| name     |
+----------+
| Tatiana  |
| Jonathan |
| Tommy    |
| Alex     |
+----------+
'''


class TestChangeDatatype(unittest.TestCase):
    def test_example_1(self):
        data = {'name': ['Tatiana', 'Khaled', 'Alex', 'Jonathan', 'Stefan', 'Tommy'],
                'species': ['Snake', 'Giraffe', 'Leopard', 'Monkey', 'Bear', 'Panda'],
                'age': [98, 50, 6, 45, 100, 26],
                'weight': [464, 41, 328, 463, 50, 349]}
        df = pd.DataFrame(data)
        expected_result = pd.DataFrame({'name': ['Tatiana', 'Jonathan', 'Tommy', 'Alex']})
        result = findHeavyAnimals(df)
        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
