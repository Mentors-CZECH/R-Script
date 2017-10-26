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
12%%6

#Pøiøazení hodnoty k promìnné
myVariable <- 13.5

### ELEMENTY ###

#class umožní urèit typ elementu
class("Lorem ipsum")

#Logické hodnoty
class(TRUE)

#Je dùležité že R používá jako oddìlovaè desetinných míst "." namísto v èesku známého ","
class(13.5)

#L urèuje že se jedná o integer
class(2L)

#Komplexní èísla
class(2+5i)

#Znaky (string / Character)
class("Text")

#Raw
class(charToRaw("Text"))




#######################################################################################

#Vektor je skupina elemtù
Ovoce <- c("Pomeranè","Jablko","Meloun","Hruška","Lièi","Banán")
print(Ovoce)


#List
SeznamPolozek <- list(c(2,3,5,3,7,9),25.99,c("Poznámka_1","Poznámka_2"))
SeznamPolozek

#Matice prvkù
Matice <- matrix(c("a", "b", "c", "d", "a","c"), nrow = 2, ncol = 3, byrow = TRUE)
Matice

#Pole
Pole <- array(c("a", "v", "d"), dim = c(3,2,3))
Pole

#Faktor
Ovoce <- c("Pomeranè", "Jablko", "Meloun", "Hruška", "Lièi", "Banán", "Jablko", "Jablko", "Pomeranè")
Faktor_Ovoce <- factor(Ovoce)
Faktor_Ovoce
#Poèet faktorù v promìnné
nlevels(Faktor_Ovoce)


#Datové rámce (Data Frames)
BMI <- data.frame(
                      pohlaví = c("Muž","Žena","Muž","Žena","Muž","Muž"),
                      výška = c(189, 171, 181, 180, 168, 195),
                      Váha = c(98,55,87,48,120,95),
                      Vìk = c(26,20,24,18,35,58)
                 )
BMI
