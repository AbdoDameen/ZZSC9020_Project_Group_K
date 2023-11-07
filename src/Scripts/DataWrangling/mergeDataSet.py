import pandas as pd
demand_df = pd.read_csv('../../data/totaldemand_nsw.csv')
temp_df = pd.read_csv('../../data/temperature_nsw.csv')
demand_df.head(10)
temp_df.head(10)


#Display the count in each dataset
demand_df.count()
temp_df.count()

#Show a few lines of the data
demand_df.tail(10)
temp_df.tail(10)

#Change the Data type to date time
demand_df[['DATETIME']] = demand_df[['DATETIME']].apply(pd.to_datetime)
demand_df.dtypes
temp_df[['DATETIME']] = temp_df[['DATETIME']].apply(pd.to_datetime)
temp_df.dtypes

subset = demand_df[['DATETIME', 'TOTALDEMAND']]
subset.set_index('DATETIME', inplace=True)  # Set 'DATETIME' as the index

# Resample by 30-minute intervals and calculate the mean
df_30min_avg = subset.resample('30T').mean()

## temp data - subset
subset_temp = temp_df[['DATETIME', 'TEMPERATURE']]
subset_temp.set_index('DATETIME', inplace=True)  # Set 'DATETIME' as the index

# Resample by 30-minute intervals and calculate the mean
temp_df_30min_avg = subset_temp.resample('30T').mean()

merged_df = pd.merge(df_30min_avg, temp_df_30min_avg, on='DATETIME')
merged_df

#merged_df.to_csv('C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/NewPull/data/merged_daily_averages.csv', index=False)
merged_df.to_csv('../../data/merged_daily_averages.csv', index=False)

