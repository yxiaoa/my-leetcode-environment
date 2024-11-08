import pandas as pd
import unittest
from exercise.students_and_examinations import *


class TestStudentsAndExaminations(unittest.TestCase):
    def test_Example_1(self):
        students = {'student_id': [1, 2, 13, 6],
                    'student_name': ['Alice', 'Bob', 'John', 'Alex']}
        subjects = {'subject_name': ['Math', 'Physics', 'Programming']}
        examinations = {'student_id': [1, 1, 1, 2, 1, 1, 13, 13, 13, 2, 1],
                        'subject_name': ['Math', 'Physics', 'Programming', 'Programming', 'Physics', 'Math', 'Math', 'Programming', 'Physics', 'Math', 'Math']}
        expected_result = pd.DataFrame({'student_id': [1, 1, 1, 2, 2, 2, 6, 6, 6, 13, 13, 13],
                                        'student_name': ['Alice', 'Alice', 'Alice', 'Bob', 'Bob', 'Bob', 'Alex', 'Alex', 'Alex', 'John', 'John', 'John'],
                                        'subject_name': ['Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming'],
                                        'attended_exams': [3, 2, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1]})
        result = students_and_examinations(pd.DataFrame(
            students), pd.DataFrame(subjects), pd.DataFrame(examinations))
        pd.testing.assert_frame_equal(result, expected_result)

    def test_Example_2(self):
        students = {'student_id': [1, 2, 13, 6],
                    'student_name': ['null', 'Bob', 'John', 'Alex']}
        subjects = {'subject_name': ['Math', 'Physics', 'Programming']}
        examinations = {'student_id': [1, 1, 1, 2, 1, 1, 13, 13, 13, 2, 1],
                        'subject_name': ['Math', 'Physics', 'Programming', 'Programming', 'Physics', 'Math', 'Math', 'Programming', 'Physics', 'Math', 'Math']}
        expected_result = pd.DataFrame({'student_id': [1, 1, 1, 2, 2, 2, 6, 6, 6, 13, 13, 13],
                                        'student_name': ['null', 'null', 'null', 'Bob', 'Bob', 'Bob', 'Alex', 'Alex', 'Alex', 'John', 'John', 'John'],
                                        'subject_name': ['Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming', 'Math', 'Physics', 'Programming'],
                                        'attended_exams': [3, 2, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1]})
        result = students_and_examinations(pd.DataFrame(
            students), pd.DataFrame(subjects), pd.DataFrame(examinations))
        pd.testing.assert_frame_equal(result, expected_result)

if __name__ == '__main__':
    unittest.main()
