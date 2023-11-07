install.packages("tidyverse")
library(tidyverse)
library(lubridate)
#tidyerse_update();

file_path_demand_temp_rrp <- "merged_TempDemandRRP.csv"
              
file_path_publicHolidays <- "school-public_holidays/MergedData/PublicHolidays.csv"

#read file to check content 
#demand_temp_rrp_df <- read.csv(file_path_demand_temp_rrp)
#summary(demand_temp_rrp_df)

#read file to check content 
#publicHolidays_df <- read.csv(file_path_publicHolidays)
#summary(publicHolidays_df)

#use tibble
#set the heading
colnames1 <- c("Ind","DATETIME","TOTALDEMAND","TEMPERATURE","RRP")
coltypes1 <- 'icddd'
#read the file 
#spec(demand_temp_rrp_df)
# Read the CSV file into dataframe
demand_temp_rrp_df <- read_csv(file_path_demand_temp_rrp, skip=1,col_types = coltypes1, col_names = colnames1)
#find problems in data frame
#problems(demand_temp_rrp_df)
# display the data
print(demand_temp_rrp_df, n=10)

#convert DATETIME to datetime
#demand_temp_rrp_df$DATETIME= as_datetime(demand_temp_rrp_df$DATETIME)
demand_temp_rrp_df$DATETIME <- format(demand_temp_rrp_df$DATETIME, format="%Y-%m-%d %H:%M:%S")

demand_temp_rrp_df$Date <- as.Date(demand_temp_rrp_df$DATETIME)



#Get public holidays
coltypes <- 'Dc'
#read the file 
# Read the CSV file into dataframe
publicHolidays_df <- read_csv(file_path_publicHolidays, col_types = coltypes)
#find problems in data frame
#problems(publicHolidays_df)
# display the data
print(publicHolidays_df, n=10)

# make the holiday name lowercase
publicHolidays_df$Holiday <- tolower(publicHolidays_df$Holiday)

#remove duplicates
duplicates <- publicHolidays_df[duplicated(publicHolidays_df), ]
publicHolidays_df <- unique(publicHolidays_df)

#check for duplicates with the date only

duplicates <- publicHolidays_df[duplicated(publicHolidays_df[, c("Date")]), ]
publicHolidays_df[publicHolidays_df$Date == '2011-04-25', ]
publicHolidays_df[publicHolidays_df$Date == '2017-01-02', ]

#delete the duplicate row of easter monday - since 25th is also anzac day
publicHolidays_df <- publicHolidays_df[!(publicHolidays_df$Date == '2011-04-25' & publicHolidays_df$Holiday == 'easter monday'), ]
#delete the duplicate row of new years day
publicHolidays_df <- publicHolidays_df[!(publicHolidays_df$Date == '2017-01-02' & publicHolidays_df$Holiday == "new year's day holiday"), ]


#duplicates <- demand_temp_rrp_df[duplicated(demand_temp_rrp_df), ]

#Add date field onto demand_temp_rrp_df
#demand_temp_rrp_df$Date = as.Date(demand_temp_rrp_df$DATETIME)
#Add isHoliday field onto demand_temp_rrp_df
demand_temp_rrp_df$isHoliday = as.logical(FALSE)


# Merge the data frames based on a common column (ID)
merged_df <- merge(demand_temp_rrp_df, publicHolidays_df, by = "Date", all.x = TRUE)

# Update the isHoliday column to 1 for rows that have a match in 2
merged_df$isHoliday[!is.na(merged_df$Holiday)] <- 1

# Remove the Holiday column from the merged_df if you don't need it
merged_df$Holiday <- NULL

# Resulting data frame with the isHoliday column updated
head(merged_df, n=10)

count(merged_df)
count(demand_temp_rrp_df)

#get subset of the columns
subset_df <- merged_df[c('DATETIME', 'TOTALDEMAND', 'TEMPERATURE', 'RRP', 'isHoliday')]

#subset_df$DATETIME <- format(strptime(subset_df$DATETIME, format="%Y-%m-%dT%H:%M:%SZ"), format="%Y-%m-%d %H:%M:%S")

summary(subset_df)

#order the data
subset_df <- subset_df[order(subset_df$DATETIME),]


write_csv(subset_df, "merged_TempDemandRRPHoliday.csv")
