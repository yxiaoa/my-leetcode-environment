import pandas as pd

def analyze_dna_patterns(samples: pd.DataFrame) -> pd.DataFrame:
    samples['has_start'] = samples['dna_sequence'].str.startswith('ATG').astype('int64')
    samples['has_stop'] = samples['dna_sequence'].str.endswith(('TAA', 'TAG', 'TGA')).astype('int64')
    samples['has_atat'] = samples['dna_sequence'].str.contains('ATAT').astype('int64')
    samples['has_ggg'] = samples['dna_sequence'].str.contains('GGG').astype('int64')
    samples = samples.sort_values(by='sample_id')
    return samples
