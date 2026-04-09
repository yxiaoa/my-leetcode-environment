import pandas as pd

def most_friends(request_accepted: pd.DataFrame) -> pd.DataFrame:
    total_count = (
        request_accepted['requester_id'].value_counts()
        .add(request_accepted['accepter_id'].value_counts(), fill_value=0)
    )
    most_friends_id = int(total_count.idxmax())
    max_count = int(total_count.max())
    return pd.DataFrame({'id': [most_friends_id], 'num': [max_count]})

