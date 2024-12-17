import pandas as pd


def exchange_seats(seat: pd.DataFrame) -> pd.DataFrame:
    result = seat.copy()
    max_id = result['id'].max()

    def change_id(x):
        if x % 2 == 0:
            return x - 1
        elif x != max_id:
            return x + 1
        else:
            return x

    result['id'] = result['id'].apply(change_id)
    return result.sort_values(by='id').reset_index(drop=True)
