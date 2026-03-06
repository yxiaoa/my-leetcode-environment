import pandas as pd

def tree_node(tree: pd.DataFrame) -> pd.DataFrame:
    tree['type'] = tree['p_id'].apply(lambda x: 'Root' if pd.isnull(x) else 'Inner')
    tree.loc[(tree['type'] == 'Inner') & (~tree['id'].isin(tree['p_id'])), 'type'] = 'Leaf'
    return tree[['id', 'type']]
