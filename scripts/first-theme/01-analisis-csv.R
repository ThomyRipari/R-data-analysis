autos = read.csv("../data/first-theme/auto-mpg.csv", header = TRUE, sep = ",")

names(autos)

autos_no_header = read.csv("../data/first-theme/auto-mpg-noheader.csv", header = FALSE)
head(autos_no_header, 4)

autos_custom_header = read.csv("../data/first-theme/auto-mpg-noheader.csv",
                               header = FALSE,
                               col.names = c("numero", "millas_por_galeon", "cilindros",
                                             "desplazamiento", "caballos_de__potencia", "peso",
                                             "aceleracion", "año", "modelo")
                               )

head(autos_custom_header, 2)
