
import pandas as pd

def analyze_subscription_conversion(user_activity: pd.DataFrame) -> pd.DataFrame:
    paid_users = user_activity[user_activity['activity_type'] == 'paid']['user_id'].unique()
    user_activity = user_activity[user_activity['user_id'].isin(paid_users)]
    # Banker's Rounding
    trial_avg = user_activity[user_activity['activity_type'] == 'free_trial'].groupby('user_id')['activity_duration'].mean().apply(lambda x: round(x + 0.000000000005, 2)).reset_index()
    paid_avg = user_activity[user_activity['activity_type'] == 'paid'].groupby('user_id')['activity_duration'].mean().apply(lambda x: round(x + 0.000000000005, 2)).reset_index()
    result = pd.merge(trial_avg, paid_avg, on='user_id', suffixes=('_trial', '_paid'))
    result.columns = ['user_id', 'trial_avg_duration', 'paid_avg_duration']
    return result.reset_index(drop=True)
