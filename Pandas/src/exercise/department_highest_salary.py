import pandas as pd

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    merged_df = pd.merge(employee, department, left_on='departmentId', right_on='id', suffixes=('_employee', '_department'))
    max_salary_df = merged_df[merged_df['salary'] == merged_df.groupby('departmentId')['salary'].transform('max')]
    result_df = max_salary_df[['name_department', 'name_employee', 'salary']].reset_index(drop=True)
    result_df.columns = ['Department', 'Employee', 'Salary']
    return result_df
