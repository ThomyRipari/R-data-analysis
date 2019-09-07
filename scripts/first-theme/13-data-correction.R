install.packages("tidyr")
library(tidyr)

crimes.data = read.csv("../data/first-theme/USArrests.csv", stringsAsFactors = FALSE)

View(crimes.data)

crimes.data = cbind(state = rownames(crimes.data), crimes.data)

# Simplificar Columnas en Diccionarios ( KEY / VALUE )

crimes.data.1 = gather(crimes.data, key = "crime_type", value = "arrest_estimate", Murder : UrbanPop)

crimes.data.2 = gather(crimes.data, key = "crime_type", value = "arrest_estimate", Murder : Rape)


# Juntar Columnas en 1 sola usando un separador

crimes.data.3 = unite(crimes.data, col = "Murder_Assault", Murder, Assault, sep = "_")


# Separar esas columnas

crimes.data.4 = separate(crimes.data.3,
                         col = "Murder_Assault",
                         into = c("Murder", "Assault"),
                         sep = "_")

