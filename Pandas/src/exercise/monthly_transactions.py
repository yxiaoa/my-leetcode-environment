import pandas as pd


def monthly_transactions(transactions: pd.DataFrame) -> pd.DataFrame:
    df = transactions.copy()
    df['month'] = df['trans_date'].dt.strftime('%Y-%m')
    df['approved_count'] = (df['state'] == 'approved').astype(int)
    df['approved_total_amount'] = df['amount'].where(df['state'] == 'approved', 0)
    monthly_stats = (
        df.groupby(['month', 'country'], as_index=False, sort=False, dropna=False)
        .agg(
            trans_count=('id', 'count'),
            approved_count=('approved_count', 'sum'),
            trans_total_amount=('amount', 'sum'),
            approved_total_amount=('approved_total_amount', 'sum'),
        )
        .sort_values(by=['month'])
        .reset_index(drop=True)
    )

    return monthly_stats
