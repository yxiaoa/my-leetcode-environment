import pandas as pd

def students_and_examinations(students: pd.DataFrame, subjects: pd.DataFrame, examinations: pd.DataFrame) -> pd.DataFrame:
    result = pd.merge(students, subjects, how='cross', on=None, validate='many_to_many')
    result = pd.merge(result, examinations, how='left', on=['student_id', 'subject_name'], validate='many_to_many')
    attended_exams = examinations.groupby(['student_id', 'subject_name']).size().reset_index(name='attended_exams')
    result = pd.merge(result, attended_exams, how='left', on=['student_id', 'subject_name'], validate='many_to_many')
    result = result.drop_duplicates()
    result['attended_exams'] = result['attended_exams'].fillna(0)
    result['attended_exams'] = result['attended_exams'].astype('int64')
    result = result.sort_values(by=['student_id', 'subject_name']).reset_index(drop=True)
    return result
