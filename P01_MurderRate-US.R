getwd()
setwd("C:/Users/Lubom�r R�gl/Desktop/Mentors/R")

USMurdersData <- read.csv("Data/USA_Murders.csv", header = TRUE, sep = ";", dec = ".")
print(USMurdersData)

class(USMurdersData)

#Structure - Zobraz� strukturu objektu
str(USMurdersData)
#Head - Prvn�ch X z�znam�
head(USMurdersData)
names(USMurdersData)

#Zachov�v� po�ad� ��dk� z p�vodn� tabulky
population <- USMurdersData$Population
population

# Se�adit st�ty podle po�tu vra�d - Sort() vrac� se�azen� vektor
sort(USMurdersData$Murders)

#ORDER() Vezme vektor a vrac� se�azen� indexy vektoru
#Rychl� uk�zka rozd�lu sort a order
hodnoty <- c(15, 16, 17, 30, 5, 11, 8)
sort(hodnoty)
order(hodnoty)

#Pou�ijeme order pro se�azen� v�ech st�tu podle po�tu vra�d
MurdersIndex <- order(USMurdersData$Murders)

#vr�tit st�ty dle po�tu vra�d
USMurdersData$StateCode[MurdersIndex]

#nevy��� po�et vra� ve st�t�
max(USMurdersData$Murders)
topState <- which.max(USMurdersData$Murders)
USMurdersData$State[topState]





#California m� nejvy��� po�et vra�d. M��e ale m�t nejvy��� po�et obyvatel ze v�ech st�t�
#Zjistit st�t s nyejvy���m po�tem obyvatel

USMurdersData$State[which.max(USMurdersData$Population)]


#mus�me po��tat vra�dy na obyvatele. R pou��v� Vektor arithmetics
#m��eme pou��vat matematick� operace na cel� vektor c()+1 nebo mezi vektory c()+c2()
murder_rate <- USMurdersData$Murders / USMurdersData$Population * 100000
murder_rate
USMurdersData$State[order(murder_rate,decreasing = TRUE)]

## Logicals for vector indexing
index <- murder_rate <= 1.8
index

USMurdersData$State[index]
sum(index)

# Which statement vrac� pouze logick� hodnoty == TRUE
# vrac� index z datasetu, kter� == TRUE pokud je stejn� jako st�t
index <- which(USMurdersData$State == "Massachusetts")
index

# match porovn�v� dva vektory mezi sebou
index <- match(c("New York", "Florida", "Texas"), USMurdersData$Smurdertate)
index

murder_rate[index]

# %in% operator vyhled�v� obsah vektoru v jin�m vektoru
c("Boston", "Dakota", "Washington") %in% USMurdersData$State


#basic data wrangling
#deep layer package
library(dplyr)

#mutate(dataTable,sloupec=expression
#v expression nemus�me znovu definovat data table
murders <- mutate(USMurdersData,rate=Murders/Population*100000)
head(murders)

#filter func pou��v�m upravenou tabulku murder s nov�m sloupcem
filter(murders,rate<=1.5)


#select - vytvo�� novou tabulku z data table a s definovan�a sloupcema
new_table <- select(murders,State,StateCode,rate)
filter(new_table, rate <= 1.5)



#pipe operator slou�� k p�d�v�n� na sebe navazuj�c�ch operac�
murders %>% select(State,StateCode,rate) %>% filter(rate<=1.7)











