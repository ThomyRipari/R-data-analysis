housing = read.csv("../data/first-theme/BostonHousing.csv")


housing.z = scale(housing, center = TRUE, scale = TRUE)
housing.mean = scale(housing, center = TRUE, scale = FALSE)
housing.sd = scale(housing, center = FALSE, scale = TRUE)
housing.none = scale(housing, center = FALSE, scale = FALSE)


scale.many.cols = function(dataframe, cols) {
  names = names(dataframe)
  
  for (col in cols) {
    name = paste(names[col], "z", sep = ".")
    dataframe[name] = scale(dataframe[, col])
  }
  
  cat(paste("Se han normalizado: ", length(cols), " Columna(s)"))
  dataframe
}

housing = scale.many.cols(housing, c(3, 6))

