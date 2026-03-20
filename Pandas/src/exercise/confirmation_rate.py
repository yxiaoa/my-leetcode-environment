import pandas as pd

def confirmation_rate(signups: pd.DataFrame, confirmations: pd.DataFrame) -> pd.DataFrame:
    merged = signups[['user_id']].merge(confirmations[['user_id', 'action']], on='user_id', how='left')
    stats = merged.groupby('user_id', sort=False, as_index=False).agg(
        total_actions=('action', 'count'),
        confirmed_actions=('action', lambda s: s.eq('confirmed').sum()),
    )
    stats['confirmation_rate'] = (stats['confirmed_actions'] / stats['total_actions']).fillna(0).round(2)
    return stats[['user_id', 'confirmation_rate']]
