##### Introduction to R programming
# GIT repo


## Pøedpoklady pøed zaèátkem kurzu
# Jedná se o kurz, kde pøedpokládáme støednì pokroèilou znalost práce s PC (na úrovni uivatele). Pro civèení budete potøebovat 
# nainstalované prostøedí pro práci s R a programovací jazyk R. Budete tedy potøebovat oprávnìní instalovat novı software
# na vašem Pc. Jeliko se jedná o programovací jazyk, doporuèujeme alespoò základní znalost (všeobecnı pojem o tom jak programování funguje)
# programování a algoritmù.


## Co je R?
# jednoduchı programovací jazyk pro datovou analızu. Vychází z jazyka S (Bell labs). Vhodné pro automatizaci vıpoètù,
# vizualizaci dat formou grafu a explorativní analızu. Vıhodou je hromada packages které jsou volnì dostupné. Pro práci
# na tìchto materiálech budeme pouívat IDE (integrated developement enviroment) Visual Studio 2016 (komunitní verze pro nekomerèní
# úèely je zdarma ke staení zde. Pokud nechcete pouívat Visual Studio mùete pouívat Rstudio a nebo online prostøedí pro R

## Graf popularity programovacích jazykù
## Graf cash programovacích jazykù


## Historie R


## Obsah kurzu


# 001_Úvod.r <- 
# 010_Dokumentace.r


## Excel vs. R
# Existují další produkty (SQL,Python,D3,SAS atp) -> soustøedíme se pouze na excel, nicménì k nìkterım argumentùm:

#SQL - není náhraka R. Je vhodné pro manipulaci dat a pøípravu vısledého datasetu pro import do R, kde se provádí finální kroky
# Døíve mìl váhu argument, e nìkteré kalkulace v R jsou pomalé a je tak lepší je realizovat nad SQL serverem. V souèasné dobì
# je dostupnı Microsoft R server, kterı tuto èást zcela neguje

#PYTHON




# Excel umoòuje omezenı poèet øádkù. Pokud obsahuje hodnì listù, dat atp, program zaène padat
# R nemá problém s ohromnım datasetem a s provádìním operací nad tìmito daty
# R podporuje rozsáhlou knihovnu balíèkù pro urèité operace
# R podporuje vizualizaci dat, které není moné v Excelu zobrazit
# R umoòuje jednoduchou reprodukci dostaeného vısledku. Jeliko jsou všechny kroky zapsány formou kódu, je jednodùche provést celı vypoèet znovu nad aktualizovanım datasetem
# R je zdarma, Excel ne :-)
# Version control pomocí GIT. U ádné další verzování excelovskıch souborù pomocí názvu.








#F5 Sestavení celého projektu
#CTRL+Enter - Proede øádek na kterém se nachází kurzor

print("Hello world!")
install.packages("dplyr")


#Sèítání hodnot
12 + 13
#Odèítání hodnot
12-23
#Násobení hodnot
12*59
#Dìlení hodnot
15/3.5
#Mocniny
2^3
#Modulo
12 %% 6
#True/False
3 < 4

## Logical operators

#Exactly equal to
2+2==5
T == TRUE

# Less than
12 < 15
12 < 12
12 < 5

# Less or equal
13 <= 15
13 <= 13
13 <= 8

# Greater than
54 > 55
54 > 54
54 > 12

# greater or equal
26 >= 60
26 >= 26
26 >= 7


# not equal to
# pøidán string -> vrate se a zkuste si jak logické operátory vyhodocují øetìzce
17 != 25
17 != 17
17 != 10
17 != "a"

# NOT pro logické hodnoty
c1 <- c(TRUE, FALSE, TRUE, TRUE)
c2 <- c(FALSE, FALSE, TRUE, FALSE)
class(c2)
vysledek <- c1!c2
print(vysledek)
# OR
vysledek <- c1|c2

vysledek
# AND
TRUE & TRUE




sum(1, 3, 5)


rep("Yo ho!", times = 3)
sqrt(24)

help(sqrt)
example(min)
list.files()
#Nastavit WD v solution
getwd()

source("002_ImportExport.R")

#Pøiøazení hodnoty k promìnné
myVariable <- 13.5
nextVariable = 14.55



### ELEMENTY ###

#class umoní urèit typ elementu
class("Lorem ipsum")

#Logické hodnoty
class(TRUE)

#Je dùleité e R pouívá jako oddìlovaè desetinnıch míst "." namísto v èesku známého ","
class(13.5)

#L urèuje e se jedná o integer
class(2L)

#Komplexní èísla
class(2+5i)

#Znaky (string / Character)
class("Text")

#Raw
class(charToRaw("Text"))



#sekvence
5:9
seq(5,9)
seq(5, 9, 0.01)
seq(1,99,length.out=100)
9:5


#List
SeznamPolozek <- list(c(2,3,5,3,7,9),25.99,c("Poznámka_1","Poznámka_2"))
SeznamPolozek

#Matice prvkù
Matice <- matrix(c("a", "b", "c", "d", "a","c"), nrow = 2, ncol = 3, byrow = TRUE)
Matice

#Pole
Pole <- array(c("a", "v", "d"), dim = c(3,2,3))
Pole


#COERCION
x <- 1:5
y <- as.character(x)
y
as.numeric(y)


#NA - Not Available

x <- c("1","b","3")
as.numeric(x)
# zobrazí chybovou hlášku NAs introduced by coercion - R nedokáe pøevést znak "b" na èíselnou hodnotu
# dojde tedy k nahrazení znaku hodnotou NA 


#Faktor
Ovoce <- c("Pomeranè", "Jablko", "Meloun", "Hruška", "Lièi", "Banán", "Jablko", "Jablko", "Pomeranè")
Faktor_Ovoce <- factor(Ovoce)
Faktor_Ovoce
#Poèet faktorù v promìnné
nlevels(Faktor_Ovoce)


#Names
# pouijeme dataset z pøedchozího pøíkladu
Ovoce <- c("Pomeranè", "Jablko", "Meloun", "Hruška", "Lièi", "Banán", "Jablko", "Jablko", "Pomeranè")
Cena <- c(12,30,50,12,13,15,55,55,12)

names(Cena) <- Ovoce
Cena[1:3]

Cena[c("Jablko","Meloun")]


#Datové rámce (Data Frames)
BMI <- data.frame(
                      pohlaví = c("Mu","ena","Mu","ena","Mu","Mu"),
                      vıška = c(189, 171, 181, 180, 168, 195),
                      Váha = c(98,55,87,48,120,95),
                      Vìk = c(26,20,24,18,35,58)
                 )
BMI




#Øazení 

hodnoty <- c(31, 45, 55, 12, 1, 22, 35, 48)
sort(hodnoty)
order(hodnoty)
rank(hodnoty)