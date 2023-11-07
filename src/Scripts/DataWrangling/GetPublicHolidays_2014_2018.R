#getwd()
#setwd("../../data/school-public_holidays")
library(dplyr)
files <- fs::dir_ls(path = ".", glob = "*australianpublicholidays-*.csv")
files
summary(files)
#? dir_ls
colnames1 <- c("Date","Holiday","Info","MoreInfo","Jurisdiction")
coltypes <- 'ccccc'

df <- readr::read_csv(files, id = "path", col_names = colnames1,col_types = coltypes,skip = 1)
#> Rows: 336776 Columns: 20

#Date,Holiday Name,Information,More Information,Applicable To
problems(df)
summary(df)

# display all the data
print(df, n=Inf)

#convert the date to date, month, year
df$Date <- ymd(df$Date)

#list the Jurisdictions
unique(df$Jurisdiction)

#remove all the states which is not NSW
df <- df[!(df$Jurisdiction == 'VIC'), ]
df <- df[!(df$Jurisdiction == 'WA'), ]
df <- df[!(df$Jurisdiction == 'SA'), ]
df <- df[!(df$Jurisdiction == 'ACT'), ]
df <- df[!(df$Jurisdiction == 'TAS'), ]
df <- df[!(df$Jurisdiction == 'NT'), ]
df <- df[!(df$Jurisdiction == 'QLD'), ]
df <- df[!(df$Jurisdiction == 'NT|SA'), ]

#the dates left are all which are national or include nsw
df

# add these data into the merged file
csv_fname = "../school-public_holidays/MergedData/PublicHolidays.csv";
write.table(select(df, Date, Holiday), file = csv_fname, sep = ",",
            append = TRUE, quote = FALSE,
            col.names = FALSE, row.names = FALSE)
