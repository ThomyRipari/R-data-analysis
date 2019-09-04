data = read.csv("../data/first-theme/housing-with-missing-value.csv", header = TRUE, stringsAsFactors = FALSE)

# Create Summary
summary(data)

# Delete Rows with NAs
data_delete_rows_NA = na.omit(data)

# Delete NAs in some columns
drop_na = c("rad")
data[, !(names(data) %in% drop_na)]
data_selective_clean = data[complete.cases(data[, !(names(data) %in% drop_na)]),]

summary(data_selective_clean)

# Delete a Col 

data$rad = NULL
summary(data)

# Delete Cols

rows_clean = c("medv", "lstat")
data_clean_rows = data[, !(names(data) %in% rows_clean)]
names(data_clean_rows)


# Complete NAs with Mean or Median
install.packages("Hmisc")
library(Hmisc)

housing = read.csv("../data/first-theme/housing-with-missing-value.csv", header = TRUE, stringsAsFactors = FALSE)

housing_copy_1 = housing
summary(housing_copy_1)

housing_copy_1$ptratio = impute(housing_copy_1$ptratio, mean)
housing_copy_1$rad = impute(housing_copy_1$rad, median)
summary(housing_copy_1)


# Get a Pattern of Dataframe
install.packages("mice")
library(mice)

md.pattern(housing)

# Plots with NAs

install.packages("VIM")
library(VIM)

aggr(housing, 
     col = c('White', 'Black'),
     numbers = TRUE,
     sortVars = TRUE,
     cex.axis = 0.75,
     gap = 1,
     ylab = c("Histograma de NAs", "Patron de NAs"))
