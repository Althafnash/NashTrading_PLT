import pandas as pd

# Read your CSV file
df = pd.read_csv('./anime.csv')

# Export directly to JSON (orient='records' keeps standard array format)
df.to_json('anime.json', orient='records', indent=4)