import pandas as pd

def last_passenger(queue: pd.DataFrame) -> pd.DataFrame:
    # sort the queue by turn
    queue = queue.sort_values(by='turn')
    # get the last passenger where total weight is no more than 1000 and get person_name
    result = queue[queue['weight'].cumsum() <= 1000].iloc[-1:][['person_name']].reset_index(drop=True)
    return result
