#funkce R

#DECIL,DECILE,DECILES
#V�po�et decilu datasetu. Hodnoty mus� b�t ve sloupci jako CSV.

#Na�ten� souboru CSV
importDataset <- read.table(file.choose(),
                            header = TRUE,
                            dec = ",",
                            stringsAsFactors = TRUE)

head(importDataset)
#Vytvo�en� vektoru, ze kter�ho budeme po��tat p�sma decilu. Tabulka importDataset, sloupec MainData
decileData <- c(importDataset$MainData)

#Vytvo�en� decilu z vektoru decile data. Decreasing False = Nejni��� hodnota -> 1
decileResult <- decile(decileData, decreasing = FALSE)
cbind(importDataset, decileResult)



## OUTLIERS
#V�po�et prvk� z datasetu kter� vybo�uj� z normalizovan�ch hodnot