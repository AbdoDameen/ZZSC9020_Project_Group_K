import os 
import pandas as pd

# Set the folder path
folder_path = '../Aggregated price and demand data/'

# Initialize an empty list to store DataFrames
dfs = []

# Loop through all the files in the folder
for filename in os.listdir(folder_path):
    if filename.endswith('.csv'):
        # Construct the complete filepath
        filepath = os.path.join(folder_path, filename)
        
        # Read each CSV file into a DataFrame
        df = pd.read_csv(filepath)
        
        # Append the DataFrame to the list
        dfs.append(df)

# Concatenate all DataFrames in the list into a single DataFrame
combined_df = pd.concat(dfs, ignore_index=True)

combined_df.to_csv('../aggregated_price_and_demand.csv', index=False)

print('CSV files have been combined into aggregated_price_and_demand.csv')

