#######################################################################################
#Vektor je posloupnost element� (podobn� jako hodnoty ve sloupci v excelu). Prvky kter� tvo��
#vektor jsou ofici�ln� nazvan� jako komponenty.Vektor vytv���me pomoc� funkce c() (c jako combine/CONCATENATE). Datov� typ v�ech element� bude pro vektor sjednocen

## Vytvo��me nov� vektor Ovoce, kter� bude obsahovat tyto prvky
Ovoce <- c("Pomeran�", "Jablko", "Meloun", "Hru�ka", "Li�i", "Ban�n")
print(Ovoce)
Ovoce[3]
Ovoce[3] <- "Pes"
Ovoce[c(1, 4)]
Ovoce[2:4]

## P�i�adit jm�no k hodnot�
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

## d�lka
length(ceny)
class(ceny)

## ov��en� zda je hodnota vektor
is.vector(ceny)

#Vectors cannot hold values with different modes(types) . Try mixing modes and see what happens:All the values were converted to a single mode (characters) so that the vector can hold them all.
# R automaticky sjednot� typ vektoru
coertion <- c(1, TRUE, "three")
class(coertion)

## Vector arithmetics
## Element wise funkce
p��jmy <- c(200, 50, 66, 215, 519, 55)
v�daje <- c(50, 356, 32, 55, 698, 47)

v�daje / 10

p��jmy - v�daje
p��jmy + v�daje

sum(p��jmy)
sum(v�daje)


profit <- p��jmy - v�daje



##V�b�r z vektoru
ceny <- c("Kola" = 10, "Auto" = 50, "Letadlo" = 200)
ceny[1]
ceny["Auto"]

ceny[c(1, 3)]
## - nefunguje pro n�zvy
ceny[c(-1)]
## v�b�r pomoc� bool vektoru
ceny[c(FALSE, TRUE, FALSE)]

ceny["Letadlo"]
ceny[c(1, 3)]
