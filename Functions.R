#funkce R

#DECIL,DECILE,DECILES
#Výpoèet decilu datasetu. Hodnoty musí být ve sloupci jako CSV.

#Naètení souboru CSV
importDataset <- read.table(file.choose(),
                            header = TRUE,
                            dec = ",",
                            stringsAsFactors = TRUE)

head(importDataset)
#Vytvoøení vektoru, ze kterého budeme poèítat pásma decilu. Tabulka importDataset, sloupec MainData
decileData <- c(importDataset$MainData)

#Vytvoøení decilu z vektoru decile data. Decreasing False = Nejnižší hodnota -> 1
decileResult <- decile(decileData, decreasing = FALSE)
cbind(importDataset, decileResult)



## OUTLIERS
#Výpoèet prvkù z datasetu které vyboèují z normalizovaných hodnot