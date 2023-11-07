install.packages("tidyverse")
library(tidyverse)
library(lubridate)
#tidyerse_update();

#qplot()

######## 2010 ##################
setwd("C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays")
library(dplyr)
files <- fs::dir_ls(path = ".", glob = "*nsw_public_holidays_*.csv")
files

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Holiday","Year","Date")
coltypes <- 'cic'
#read the files
publicHoliday_2010_2013 <- readr::read_csv(files, id = "path", col_names = colnames1,col_types = coltypes)

#read_csv(file_path, col_names = colnames1,col_types = coltypes)
# display all the data
print(publicHoliday_2010_2013, n=Inf)

summary(publicHoliday_2010_2013)
#convert the date to date, month, year
publicHoliday_2010_2013$Date <- dmy(publicHoliday_2010_2013$Date)

select(publicHoliday_2010_2013, Date, Holiday)
  
csv_fname = "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/MergedData/PublicHolidays.csv";
write.table(select(publicHoliday_2010_2013, Date, Holiday), file = csv_fname, sep = ",",
            append = TRUE, quote = FALSE,
            col.names = FALSE, row.names = FALSE)

