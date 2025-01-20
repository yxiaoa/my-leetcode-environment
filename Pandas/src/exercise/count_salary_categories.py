import pandas as pd


def count_salary_categories(accounts: pd.DataFrame) -> pd.DataFrame:
    low_salary_count = (accounts['income'] < 20000).sum()
    average_salary_count = ((accounts['income'] >= 20000) & (
        accounts['income'] <= 50000)).sum()
    high_salary_count = (accounts['income'] > 50000).sum()

    result = pd.DataFrame({
        'category': ['Low Salary', 'Average Salary', 'High Salary'],
        'accounts_count': [low_salary_count, average_salary_count, high_salary_count]
    })

    return result
