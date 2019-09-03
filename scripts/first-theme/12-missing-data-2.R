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