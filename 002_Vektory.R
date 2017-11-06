#######################################################################################
#Vektor je posloupnost elementù (podobnì jako hodnoty ve sloupci v excelu). Prvky které tvoøí
#vektor jsou oficiálnì nazvané jako komponenty.Vektor vytváøíme pomocí funkce c() (c jako combine/CONCATENATE). Datový typ všech elementù bude pro vektor sjednocen

## Vytvoøíme nový vektor Ovoce, který bude obsahovat tyto prvky
Ovoce <- c("Pomeranè", "Jablko", "Meloun", "Hruška", "Lièi", "Banán")
print(Ovoce)
Ovoce[3]
Ovoce[3] <- "Pes"
Ovoce[c(1, 4)]
Ovoce[2:4]

## Pøiøadit jméno k hodnotì
produkty <- c("Kola", "Auto", "Letadlo")
ceny <- c(10, 50, 200)
names(ceny) <- produkty
ceny

## v2
ceny <- c(kola = 10, auto = 50, letadlo = 200)
ceny

## v2
ceny <- c("Kola" = 10, "Auto" = 50, "Letadlo" = 200)
ceny

## délka
length(ceny)
class(ceny)

## ovìøení zda je hodnota vektor
is.vector(ceny)

#Vectors cannot hold values with different modes(types) . Try mixing modes and see what happens:All the values were converted to a single mode (characters) so that the vector can hold them all.
# R automaticky sjednotí typ vektoru
coertion <- c(1, TRUE, "three")
class(coertion)

## Vector arithmetics
## Element wise funkce
pøíjmy <- c(200, 50, 66, 215, 519, 55)
výdaje <- c(50, 356, 32, 55, 698, 47)

výdaje / 10

pøíjmy - výdaje
pøíjmy + výdaje

sum(pøíjmy)
sum(výdaje)


profit <- pøíjmy - výdaje



##Výbìr z vektoru
ceny <- c("Kola" = 10, "Auto" = 50, "Letadlo" = 200)
ceny[1]
ceny["Auto"]

ceny[c(1, 3)]
## - nefunguje pro názvy
ceny[c(-1)]
## výbìr pomocí bool vektoru
ceny[c(FALSE, TRUE, FALSE)]

ceny["Letadlo"]
ceny[c(1, 3)]
