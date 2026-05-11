import pandas as pd

def find_customers(customer: pd.DataFrame, product: pd.DataFrame) -> pd.DataFrame:
    product_keys = set(product['product_key'])
    customer_products = customer.groupby('customer_id')['product_key'].apply(set)
    result = customer_products[customer_products.apply(lambda x: product_keys.issubset(x))].reset_index()
    return result[['customer_id']]
