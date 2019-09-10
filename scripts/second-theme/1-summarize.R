data = read.csv("../data/second-theme/auto-mpg.csv", header = TRUE, stringsAsFactors = FALSE)

data$cylinders = factor(data$cylinders,
                        levels = c(3,4,5,6,8),
                        labels = c("3c", "4c", "5c", "6c", "8c"))

summary(data)
summary(data$mpg)
summary(data$cylinders)

# Structure of dataframe
str(data)
str(data$cylinders)


install.packages(c("raster", "moments"))
library(raster)
library(moments)

install.packages("devtools")
library(devtools)
devtools::install_github("paulponcet/modeest")
library(modeest)

X = data$mpg

# Medidas de Centralizacion

# Promedio
mean(X)

# Mediana
median(X)

# Moda, utilizando paquete modeest
mfv(X)

# Quantiles, utilizando paquete raster
quantile(X)

# Medidas de Dispersion

# Varianza
var(X)

# Desviacion Tipica
sd(X)

# Coeficiente de varianza
cv(X)

# Medidas de Asimetria, usando moments

# Asimetria de Fisher
skewness(X)

# Curtosis
moments::kurtosis(X)

# Histograma
hist(X)

