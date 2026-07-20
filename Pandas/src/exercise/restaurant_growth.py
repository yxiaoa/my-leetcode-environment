import pandas as pd

def restaurant_growth(customer: pd.DataFrame) -> pd.DataFrame:
    customer = customer.sort_values('visited_on')
    result = customer.groupby('visited_on').agg({'amount': 'sum'}).reset_index()
    result['amount'] = result['amount'].rolling(window=7, min_periods=1).sum().astype(int)
    result['average_amount'] = (result['amount'] / 7).round(2)
    first_visit_date = customer['visited_on'].min()
    result = result[result['visited_on'] >= first_visit_date + pd.Timedelta(days=6)]
    result.reset_index(drop=True, inplace=True)
    return result
