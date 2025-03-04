import pandas as pd
import numpy as np


def count_employees(employees: pd.DataFrame) -> pd.DataFrame:
    reports_count = employees['reports_to'].value_counts().astype('int64')
    average_age = employees.groupby('reports_to')['age'].mean().apply(lambda x: np.floor(x + 0.5)).astype('int64')
    result = employees[employees['employee_id'].isin(reports_count.index)]
    result = result.drop(columns=['reports_to', 'age'])
    result = result.join(reports_count.rename('reports_count'), on='employee_id').join(average_age.rename('average_age'), on='employee_id')
    result = result.sort_values(by='employee_id').reset_index(drop=True)
    return result
