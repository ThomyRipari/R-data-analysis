install.packages("scales")
library(scales)

data = read.csv("../data/first-theme/data-conversion.csv")

# Rescale Income Col
data$Income.scaled = rescale(data$Income)

rescale(data$Income, to = c(0, 100))

rescale.many.columns = function (dataframe, cols) {
  names = names(dataframe)
  
  for (col in cols) {
    name = paste(names[col], "scaled", sep = ".")
    dataframe[name] = rescale(dataframe[, col])
  }
  
  cat(paste("Se rescalaron ", length(cols), " Columna(s)"))
  dataframe
}

data = rescale.many.columns(data, c(1, 4))
