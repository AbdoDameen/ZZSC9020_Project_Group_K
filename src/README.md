# Source code

The scripts which where used to do analysis and do the models for this project can be found in the scripts folder

## DataWrangling scripts are in the DataWrangling folder and are listed below

	
|   Script                            | Data     | Source File                                                     | Output file                                               |
|-------------------------------------| --------------- |-----------------------------------------------------------------|-----------------------------------------------------------|	
| mergeDataSet.py                     | Merge the provided demand and temperature data     | data/totaldemand_nsw.csv                                        | data/merged_daily_averages.csv                            |
|                                     |       | data/temperature_nsw.csv                                        |                                                           |
|combine_aggrated_price_and_demand.py | Combine the 156 files downloaded from AEMO     | data/Aggregated price and demand data/.csv                      | data/aggregated_price_and_demand.csv                      |	
| merge_temp_demand_rrp.py            | Merge the temp/demand and RRP     | data/demand_temp.csv                                            |merged_TempDemandRRP.csv                                   |
|                                     |          | data/aggregated_price_and_demand.csv                            |                                                           |	
| GetPublicHolidays_2010_2013.R       | Merge Public holiday data for years 2010 to 2013     | data/school-public_holidays/*nsw_public_holidays_*.csv          | data/school-public_holidays/MergedData/PublicHolidays.csv |	
|GetPublicHolidays_2014_2018.R        | Merge Public holiday data for years 2014 to 2018     | data/school-public_holidays/*australianpublicholidays-*.csv     | data/school-public_holidays/MergedData/PublicHolidays.csv |	
| GetPublicHolidays_2019_2024.R       | Merge Public holiday data for years 2019 to 2024     | data/school-public_holidays/australian_public_holidays_2019.csv | data/school-public_holidays/MergedData/PublicHolidays.csv |
|                                     |      | data/school-public_holidays/australian_public_holidays_2020.csv |                                                           |
|   					|		      | data/school-public_holidays/australian_public_holidays_2021.csv |                                                           |
|   					|		      | data/school-public_holidays/australian_public_holidays_2022.csv |                                                           |
|					|			      | data/school-public_holidays/australian_public_holidays_2023.csv |                                                           |
|					|			      | data/school-public_holidays/australian_public_holidays_2024.csv |                                                           |	
| Merge_Holiday_Data.R			      | Merge Holiday dates to the Temp/Demad/RRP dataset     | data/merged_TempDemandRRP.csv                                   | data/merged_TempDemandRRPHoliday.csv                      |
|                                     | school-public_holidays/MergedData/PublicHolidays.csv            |                                                           |			  
						 
## Exploratory

|   Script                            | Notes        |
|-------------------------------------| --------------- |
| Total_Demand_vs_Estimated_Resident_Population.ipynb             | Exploratory of energy demand and population     | 

## Forecast Model Code

|   Script                            | Notes        |
|-------------------------------------| --------------- |
| Abdo capstone #2.ipynb              | Model using XGBoost to forecast the energy demand     | 
| capstone_model_final 2-10-2023.ipynb | Main model with the fine tuning |
| Nezam/final_forecast_multi_ML.ipynb | Multiple models |
| Nezam/final_prophet.ipynb | Prophet analysis |
