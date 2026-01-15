import pandas as pd


def find_users_with_high_tokens(prompts: pd.DataFrame) -> pd.DataFrame:
    user_stats = prompts.groupby('user_id').agg(
        prompt_count=('prompt', 'count'),
        avg_tokens=('tokens', 'mean'),
        max_tokens=('tokens', 'max')
    ).reset_index()
    filtered_users = user_stats[
        (user_stats['prompt_count'] >= 3) &
        (user_stats['max_tokens'] > user_stats['avg_tokens'])
    ][['user_id', 'prompt_count', 'avg_tokens']]
    filtered_users['avg_tokens'] = filtered_users['avg_tokens'].round(2)
    filtered_users = filtered_users.sort_values(
        by=['avg_tokens', 'user_id'], ascending=[False, True]).reset_index(drop=True)
    return filtered_users
