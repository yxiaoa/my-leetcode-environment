import pandas as pd


def sum_daily_odd_even(transactions: pd.DataFrame) -> pd.DataFrame:
    return transactions.groupby('transaction_date').agg(
        odd_sum=pd.NamedAgg('amount', lambda x: x[x % 2 == 1].sum()),
        even_sum=pd.NamedAgg('amount', lambda x: x[x % 2 == 0].sum())
    ).reset_index().sort_values('transaction_date')
