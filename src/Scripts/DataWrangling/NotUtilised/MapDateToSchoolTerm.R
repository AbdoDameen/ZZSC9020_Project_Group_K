#Set the Start and end date to get data from 2010 to end of 2024
start_date <- as.Date("2010-01-01")  # Starting date
end_date <- as.Date("2024-12-31")    # Ending date

#Number of dates between start and end
days_difference <- difftime(end_date, start_date, units = "days")

# Extract the numeric value of days from the difference
total_days <- as.numeric(days_difference)

#does not work creates 1 row
#date_sequence <- seq(start_date, end_date, by = "day")

#create the data set for the dates
date_sequence <- data.frame(Date = seq.Date(from = start_date, 
                                    by = "day", length.out = total_days))

#show 5 rows
head(date_sequence,5)
library(tidyverse)
library(lubridate)
#Add day of week
date_sequence$DayOfWeek <- wday(date_sequence$Date)

  
#names(date_sequence) <- c("Date")

file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/School_Holidays_Terms_2010_2023.csv"

# Read the CSV file
schoolHolidays_data <- read.csv(file_path)
schoolHolidays_data$From <- as.Date(schoolHolidays_data$From, format="%d-%b-%y")
schoolHolidays_data$To <- as.Date(schoolHolidays_data$To, format="%d-%b-%y")

head(schoolHolidays_data,5)

# add column for school term

library(dplyr)
  
  result <- date_sequence %>%
  left_join(schoolHolidays_data, by = c("Date" = "From")) %>%
  filter(Date >= schoolHolidays_data$From & Date <= schoolHolidays_data$To) %>%
  mutate(NewValue = 1)