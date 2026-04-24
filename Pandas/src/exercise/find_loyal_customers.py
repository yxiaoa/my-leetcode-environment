import pandas as pd

def find_loyal_customers(customer_transactions: pd.DataFrame) -> pd.DataFrame:
    transactions = customer_transactions.copy()
    transactions['transaction_date'] = pd.to_datetime(transactions['transaction_date'])

    grouped = transactions.groupby('customer_id', sort=False)
    customer_metrics = grouped.agg(
        purchase_count=('transaction_type', lambda t: (t == 'purchase').sum()),
        refund_rate=('transaction_type', lambda t: (t == 'refund').mean()),
        first_date=('transaction_date', 'min'),
        last_date=('transaction_date', 'max')
    )
    customer_metrics['days_active'] = (customer_metrics['last_date'] - customer_metrics['first_date']).dt.days

    loyal_customers = customer_metrics[
        (customer_metrics['purchase_count'] >= 3)
        & (customer_metrics['refund_rate'] < 0.2)
        & (customer_metrics['days_active'] >= 30)
    ].index

    return pd.DataFrame({'customer_id': loyal_customers.to_numpy()})
