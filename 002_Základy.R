getwd()

#ÈTENÍ A ZÁPIS dat
#CSV
setwd("C:/Users/Lubomír Rýgl/Desktop/Mentors/R")


DataZamestnanci <- read.csv("Data/Employee_Data.csv")
DataZamestnanci <- read.csv("Data/Employee_Data.csv",header = TRUE,sep = ",", dec = ".")
print(DataZamestnanci)
is.data.frame(DataZamestnanci)
nrow(DataZamestnanci)
ncol(DataZamestnanci)

help(max)
MaxVyplata <- max(DataZamestnanci$salary)
MaxVyplata

help(subset)
ZamMaxVyplata <- subset(DataZamestnanci, salary == max(salary))
ZamMaxVyplata

ZamOddeleni <- subset(DataZamestnanci, DataZamestnanci$dept == "IT")
ZamOddeleni

info <- subset(DataZamestnanci, DataZamestnanci$salary > 600 & DataZamestnanci$dept == "IT")
info

retDate <- subset(DataZamestnanci, as.Date(DataZamestnanci$start_date) > as.Date("2014-01-01"))
retDate

write.csv(retDate, "Data/Output.csv")



library("rjson")

result <- fromJSON(file = "appsettings.Developement.json")

###############################################
##  SQL Server
###############################################

##Naèíst knihovnu pro práci s ODBC
library(RODBC)

##Vytvoøit nové pøipojení k SQL serveru (nezapomeòte escapnout \ v øetìzci)
dbOpenConnection <- odbcDriverConnect('driver={SQL Server};server=DESKTOP-3L4O8TU\\SQLEXPRESS;database=TASKQUEUE;trusted_connection=true')

##Nad databází je možné vytváøet klasické dotazy pomocí SQL
result <- sqlQuery(dbOpenConnection, 'SELECT * FROM Users')
print(result)