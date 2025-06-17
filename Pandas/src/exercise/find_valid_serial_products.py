import pandas as pd


def find_valid_serial_products(products: pd.DataFrame) -> pd.DataFrame:
    products = products[products['description'].str.contains(r'\bSN[0-9]{4}-[0-9]{4}(?:[^0-9]|$)', regex=True)]
    return products[['product_id', 'product_name', 'description']].reset_index(drop=True)
