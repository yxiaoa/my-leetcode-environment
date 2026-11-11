import pandas as pd

def find_product_recommendation_pairs(product_purchases: pd.DataFrame, product_info: pd.DataFrame) -> pd.DataFrame:
    purchases = product_purchases[['user_id', 'product_id']].drop_duplicates()
    pairs = purchases.merge(purchases, on='user_id')
    pairs = pairs[pairs['product_id_x'] < pairs['product_id_y']]

    result = (
        pairs.groupby(['product_id_x', 'product_id_y'])
        .size()
        .reset_index(name='customer_count')
        .query('customer_count >= 3')
        .rename(columns={'product_id_x': 'product1_id', 'product_id_y': 'product2_id'})
        .sort_values(['customer_count', 'product1_id', 'product2_id'], ascending=[False, True, True], ignore_index=True)
    )

    categories = product_info.set_index('product_id')['category']
    result['product1_category'] = result['product1_id'].map(categories)
    result['product2_category'] = result['product2_id'].map(categories)
    return result[['product1_id', 'product2_id', 'product1_category', 'product2_category', 'customer_count']]
