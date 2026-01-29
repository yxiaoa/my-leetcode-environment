import pandas as pd

def order_scores(scores: pd.DataFrame) -> pd.DataFrame:
    df = scores.sort_values('score', ascending=False).reset_index(drop=True)
    df['rank'] = df['score'].rank(method='dense', ascending=False).astype('int64')
    return df[['score', 'rank']]
