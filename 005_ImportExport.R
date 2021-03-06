getwd()

#�TEN� A Z�PIS dat
#CSV
setwd("C:/Users/Lubom�r R�gl/Desktop/Mentors/R")


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


###############################################
##  SQL Server
###############################################

##Na��st knihovnu pro pr�ci s ODBC
library(RODBC)

##Vytvo�it nov� p�ipojen� k SQL serveru (nezapome�te escapnout \ v �et�zci)
dbOpenConnection <- odbcDriverConnect('driver={SQL Server};server=DESKTOP-3L4O8TU\\SQLEXPRESS;database=TASKQUEUE;trusted_connection=true')

##Nad datab�z� je mo�n� vytv��et klasick� dotazy pomoc� SQL
result <- sqlQuery(dbOpenConnection, 'SELECT * FROM Users')
print(result)


