install.packages("tidyverse")
library(tidyverse)
library(lubridate)
#tidyerse_update();

#qplot()

file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2019.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'
#read the file 
#publicHoliday_2019 <- read_csv(file_path)
#spec(publicHoliday_2019)
publicHoliday_2019 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)
# display all the data
print(publicHoliday_2019, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2019$Date <- ymd(publicHoliday_2019$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2019 <- publicHoliday_2019[keepColumns]
publicHoliday_2019 <- filter (publicHoliday_2019 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2019 <- publicHoliday_2019[keepColumns]


############ 2020 #####################################
file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2020.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'

#read the file 
publicHoliday_2020 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)

# display all the data
print(publicHoliday_2020, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2020$Date <- ymd(publicHoliday_2020$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2020 <- publicHoliday_2020[keepColumns]
publicHoliday_2020 <- filter (publicHoliday_2020 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2020 <- publicHoliday_2020[keepColumns]

############ 2021 #####################################
file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2021.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'

#read the file 
publicHoliday_2021 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)

# display all the data
print(publicHoliday_2021, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2021$Date <- ymd(publicHoliday_2021$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2021 <- publicHoliday_2021[keepColumns]
publicHoliday_2021 <- filter (publicHoliday_2021 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2021 <- publicHoliday_2021[keepColumns]

############ 2022 #####################################
file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2022.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'

#read the file 
publicHoliday_2022 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)

# display all the data
print(publicHoliday_2022, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2022$Date <- ymd(publicHoliday_2022$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2022 <- publicHoliday_2022[keepColumns]
publicHoliday_2022 <- filter (publicHoliday_2022 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2022 <- publicHoliday_2022[keepColumns]

############ 2023 #####################################
file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2023.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'

#read the file 
publicHoliday_2023 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)

# display all the data
print(publicHoliday_2023, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2023$Date <- ymd(publicHoliday_2023$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2023 <- publicHoliday_2023[keepColumns]
publicHoliday_2023 <- filter (publicHoliday_2023 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2023 <- publicHoliday_2023[keepColumns]

############ 2024 #####################################
file_path <- "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/australian_public_holidays_2024.csv"

# Read the CSV file into dataframe
#publicHoliday_df <- read.csv(file_path)

#use tibble
#set the heading
colnames1 <- c("Date","Holiday","Info","More Info","Jurisdiction")
coltypes <- 'ccccc'

#read the file 
publicHoliday_2024 <- read_csv(file_path, col_names = colnames1,col_types = coltypes, skip=1)

# display all the data
print(publicHoliday_2024, n=Inf)

#convert the date to date, month, year
#Date is as yyyymmdd - need to convert into proper date
publicHoliday_2024$Date <- ymd(publicHoliday_2024$Date)

#remove the unnecessary columns
keepColumns <- c("Date", "Holiday", "Jurisdiction")
publicHoliday_2024 <- publicHoliday_2024[keepColumns]
publicHoliday_2024 <- filter (publicHoliday_2024 , Jurisdiction=="nsw")

#remove Jurisdiction
keepColumns <- c("Date", "Holiday")
publicHoliday_2024 <- publicHoliday_2024[keepColumns]


#merge all datasets
publicHoliday_2019_2024 <- rbind(publicHoliday_2019,publicHoliday_2020,publicHoliday_2021,publicHoliday_2022,publicHoliday_2023,publicHoliday_2024)

write.csv(publicHoliday_2019_2024, "C:/Users/Pam/Documents/MODS/CapStone/GroupRepo/zzsc9020_Project_Group_K/data/school-public_holidays/MergedData/PublicHolidays.csv", row.names=FALSE)