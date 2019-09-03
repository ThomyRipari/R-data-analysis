data = read.csv("../data/first-theme/data-conversion.csv")

breakpoints = c(-Inf, 5000, 25000, Inf)
names = c("BAJOS", "MEDIOS", "ALTOS")

data$Income.categorized = cut(data$Income, breaks = breakpoints, labels = names)
data$Income.cat2 = cut(data$Income, breaks = breakpoints)
data$Income.cat3 = cut(data$Income,
                       breaks = 4,
                       labels = c("BAJOS", "MEDIOS-BAJOS", "MEDIOS-ALTOS", "ALTOS"))

# Dummy Variables

students = read.csv("../data/first-theme/data-conversion.csv")

install.packages("dummies")
library(dummies)

students.dummy = dummy.data.frame(students, sep = ".")

dummy(students$State, sep = ".")

dummy.data.frame(students, names = c("Gender"), sep = ": ")
