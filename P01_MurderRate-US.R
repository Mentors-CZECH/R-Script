getwd()
setwd("C:/Users/Lubomír Rýgl/Desktop/Mentors/R")

USMurdersData <- read.csv("Data/USA_Murders.csv", header = TRUE, sep = ";", dec = ".")
print(USMurdersData)

class(USMurdersData)

#Structure - Zobrazí strukturu objektu
str(USMurdersData)
#Head - Prvních X záznamù
head(USMurdersData)
names(USMurdersData)

#Zachovává poøadí øádkù z pùvodní tabulky
population <- USMurdersData$Population
population

# Seøadit státy podle poètu vražd - Sort() vrací seøazený vektor
sort(USMurdersData$Murders)

#ORDER() Vezme vektor a vrací seøazené indexy vektoru
#Rychlá ukázka rozdílu sort a order
hodnoty <- c(15, 16, 17, 30, 5, 11, 8)
sort(hodnoty)
order(hodnoty)

#Použijeme order pro seøazení všech státu podle poètu vražd
MurdersIndex <- order(USMurdersData$Murders)

#vrátit státy dle poètu vražd
USMurdersData$StateCode[MurdersIndex]

#nevyšší poèet vraž ve státì
max(USMurdersData$Murders)
topState <- which.max(USMurdersData$Murders)
USMurdersData$State[topState]





#California má nejvyšší poèet vražd. Mùže ale mít nejvyšší poèet obyvatel ze všech státù
#Zjistit stát s nyejvyšším poètem obyvatel

USMurdersData$State[which.max(USMurdersData$Population)]


#musíme poèítat vraždy na obyvatele. R používá Vektor arithmetics
#mùžeme používat matematické operace na celý vektor c()+1 nebo mezi vektory c()+c2()
murder_rate <- USMurdersData$Murders / USMurdersData$Population * 100000
murder_rate
USMurdersData$State[order(murder_rate,decreasing = TRUE)]

## Logicals for vector indexing
index <- murder_rate <= 1.8
index

USMurdersData$State[index]
sum(index)

# Which statement vrací pouze logické hodnoty == TRUE
# vrací index z datasetu, který == TRUE pokud je stejný jako stát
index <- which(USMurdersData$State == "Massachusetts")
index

# match porovnává dva vektory mezi sebou
index <- match(c("New York", "Florida", "Texas"), USMurdersData$Smurdertate)
index

murder_rate[index]

# %in% operator vyhledává obsah vektoru v jiném vektoru
c("Boston", "Dakota", "Washington") %in% USMurdersData$State


#basic data wrangling
#deep layer package
library(dplyr)

#mutate(dataTable,sloupec=expression
#v expression nemusíme znovu definovat data table
murders <- mutate(USMurdersData,rate=Murders/Population*100000)
head(murders)

#filter func používám upravenou tabulku murder s novým sloupcem
filter(murders,rate<=1.5)


#select - vytvoøí novou tabulku z data table a s definovanýa sloupcema
new_table <- select(murders,State,StateCode,rate)
filter(new_table, rate <= 1.5)



#pipe operator slouží k pødávání na sebe navazujících operací
murders %>% select(State,StateCode,rate) %>% filter(rate<=1.7)











