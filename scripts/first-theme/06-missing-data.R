data = read.csv("../data/first-theme/missing-data.csv", na.strings = "")

# Clean Rows with NA
data_clean = na.omit(data)

complete.cases(data)
data_clean_2 = data[complete.cases(data),]

# Check If NA Strings
is.na(data[4,])
is.na(data[1:6,])
is.na(data$Income)

# Clean NA For Income Col
data_income_cleaned = data[!is.na(data$Income),]

# Convert 0 in NAs
data$Income[data$Income == 0] = NA

# Promedio y Desviacion Tipica SIN / CON NAs
mean(data$Income)
mean(data$Income, na.rm = TRUE)

sd(data$Income)
sd(data$Income, na.rm = TRUE)
