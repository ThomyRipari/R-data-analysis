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
