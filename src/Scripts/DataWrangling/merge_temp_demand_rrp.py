library(reticulate)
import pandas as pd

#set working directory to the data folder
#df = pd.read_csv('merged_daily_averages.csv')
df = pd.read_csv('demand_temp.csv')
rrp = pd.read_csv('aggregated_price_and_demand.csv')

df.head(3)
#220561
rrp.head(3)
#337584
#rename columns
rrp = rrp[['SETTLEMENTDATE','RRP']].rename({'SETTLEMENTDATE':'DATETIME', 'RRP':'RRP'}, axis='columns')

#change data type
rrp['DATETIME'] = pd.to_datetime(rrp['DATETIME'])
df['DATETIME'] = pd.to_datetime(df['DATETIME'])

df.dtypes
rrp.dtypes
print(rrp[rrp['RRP']<=-900])

mrg_df = pd.merge(df, rrp, on='DATETIME', how='inner')# use outer if no data in dataframe   , how='outer')
# 1 row difference, since there is no rrp for 2010-01-01 00:00:00

#print(mrg_df[mrg_df['DAY']=='2016-09-03'])


mrg_df.to_csv('merged_TempDemandRRP.csv')

