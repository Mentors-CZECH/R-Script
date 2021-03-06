##### Introduction to R programming
# GIT repo


## P�edpoklady p�ed za��tkem kurzu
# Jedn� se o kurz, kde p�edpokl�d�me st�edn� pokro�ilou znalost pr�ce s PC (na �rovni u�ivatele). Pro civ�en� budete pot�ebovat 
# nainstalovan� prost�ed� pro pr�ci s R a programovac� jazyk R. Budete tedy pot�ebovat opr�vn�n� instalovat nov� software
# na va�em Pc. Jeliko� se jedn� o programovac� jazyk, doporu�ujeme alespo� z�kladn� znalost (v�eobecn� pojem o tom jak programov�n� funguje)
# programov�n� a algoritm�.


## Co je R?
# jednoduch� programovac� jazyk pro datovou anal�zu. Vych�z� z jazyka S (Bell labs). Vhodn� pro automatizaci v�po�t�,
# vizualizaci dat formou grafu a explorativn� anal�zu. V�hodou je hromada packages kter� jsou voln� dostupn�. Pro pr�ci
# na t�chto materi�lech budeme pou��vat IDE (integrated developement enviroment) Visual Studio 2016 (komunitn� verze pro nekomer�n�
# ��ely je zdarma ke sta�en� zde. Pokud nechcete pou��vat Visual Studio m��ete pou��vat Rstudio a nebo online prost�ed� pro R

## Graf popularity programovac�ch jazyk�
## Graf cash programovac�ch jazyk�


## Historie R


## Obsah kurzu


# 001_�vod.r <- 
# 010_Dokumentace.r


## Excel vs. R
# Existuj� dal�� produkty (SQL,Python,D3,SAS atp) -> soust�ed�me se pouze na excel, nicm�n� k n�kter�m argument�m:

#SQL - nen� n�hra�ka R. Je vhodn� pro manipulaci dat a p��pravu v�sled�ho datasetu pro import do R, kde se prov�d� fin�ln� kroky
# D��ve m�l v�hu argument, �e n�kter� kalkulace v R jsou pomal� a je tak lep�� je realizovat nad SQL serverem. V sou�asn� dob�
# je dostupn� Microsoft R server, kter� tuto ��st zcela neguje

#PYTHON




# Excel umo��uje omezen� po�et ��dk�. Pokud obsahuje hodn� list�, dat atp, program za�ne padat
# R nem� probl�m s ohromn�m datasetem a s prov�d�n�m operac� nad t�mito daty
# R podporuje rozs�hlou knihovnu bal��k� pro ur�it� operace
# R podporuje vizualizaci dat, kter� nen� mo�n� v Excelu zobrazit
# R umo��uje jednoduchou reprodukci dosta�en�ho v�sledku. Jeliko� jsou v�echny kroky zaps�ny formou k�du, je jednod�che prov�st cel� vypo�et znovu nad aktualizovan�m datasetem
# R je zdarma, Excel ne :-)
# Version control pomoc� GIT. U� ��dn� dal�� verzov�n� excelovsk�ch soubor� pomoc� n�zvu.








#F5 Sestaven� cel�ho projektu
#CTRL+Enter - Proede ��dek na kter�m se nach�z� kurzor

print("Hello world!")
install.packages("dplyr")


#S��t�n� hodnot
12 + 13
#Od��t�n� hodnot
12-23
#N�soben� hodnot
12*59
#D�len� hodnot
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
# p�id�n string -> vra�te se a zkuste si jak logick� oper�tory vyhodocuj� �et�zce
17 != 25
17 != 17
17 != 10
17 != "a"

# NOT pro logick� hodnoty
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

#P�i�azen� hodnoty k prom�nn�
myVariable <- 13.5
nextVariable = 14.55



### ELEMENTY ###

#class umo�n� ur�it typ elementu
class("Lorem ipsum")

#Logick� hodnoty
class(TRUE)

#Je d�le�it� �e R pou��v� jako odd�lova� desetinn�ch m�st "." nam�sto v �esku zn�m�ho ","
class(13.5)

#L ur�uje �e se jedn� o integer
class(2L)

#Komplexn� ��sla
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
SeznamPolozek <- list(c(2,3,5,3,7,9),25.99,c("Pozn�mka_1","Pozn�mka_2"))
SeznamPolozek

#Matice prvk�
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
# zobraz� chybovou hl�ku NAs introduced by coercion - R nedok�e p�ev�st znak "b" na ��selnou hodnotu
# dojde tedy k nahrazen� znaku hodnotou NA 


#Faktor
Ovoce <- c("Pomeran�", "Jablko", "Meloun", "Hru�ka", "Li�i", "Ban�n", "Jablko", "Jablko", "Pomeran�")
Faktor_Ovoce <- factor(Ovoce)
Faktor_Ovoce
#Po�et faktor� v prom�nn�
nlevels(Faktor_Ovoce)


#Names
# pou�ijeme dataset z p�edchoz�ho p��kladu
Ovoce <- c("Pomeran�", "Jablko", "Meloun", "Hru�ka", "Li�i", "Ban�n", "Jablko", "Jablko", "Pomeran�")
Cena <- c(12,30,50,12,13,15,55,55,12)

names(Cena) <- Ovoce
Cena[1:3]

Cena[c("Jablko","Meloun")]


#Datov� r�mce (Data Frames)
BMI <- data.frame(
                      pohlav� = c("Mu�","�ena","Mu�","�ena","Mu�","Mu�"),
                      v��ka = c(189, 171, 181, 180, 168, 195),
                      V�ha = c(98,55,87,48,120,95),
                      V�k = c(26,20,24,18,35,58)
                 )
BMI




#�azen� 

hodnoty <- c(31, 45, 55, 12, 1, 22, 35, 48)
sort(hodnoty)
order(hodnoty)
rank(hodnoty)