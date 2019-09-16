data = read.csv("../data/second-theme/auto-mpg.csv", stringsAsFactors = F)

# Index by Number
data[1:5, 7:9]
data[1:5, c(7,8,9)]

# Index by Name
data[1:5, c("car_name", "cylinders")]

# Min / Max MPG
data[data$mpg == max(data$mpg) | data$mpg == min(data$mpg),]

# Conditions
data[data$horsepower > 220 & data$cylinders == 8, c("car_name", "horsepower", "cylinders")]

# Subset
subset(data, horsepower > 220 & cylinders == 8, select = c("car_name", "horsepower"))

# Excluir Columnas
data[1:5, -c(1,3,9)]
data[1:5, !names(data) %in% c("No", "cylinders", "car_name")]

data[data$cylinders %in% c(5,6,8), c("car_name", "cylinders")]

data[c(T,F,F), c(F,F,T)]
