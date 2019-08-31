data = read.csv("../data/first-theme/missing-data.csv", na.strings = "")

data$income_mean = ifelse(is.na(data$Income),
                          mean(data$Income, na.rm = TRUE),
                          data$Income
                          )

data$Income[data$Income == 0] = NA
data_imputed = random.impute.data.frame(data, c(1, 2))

rand.impute = function(col) {
  # Matriz de Booleanos para indicar los valores NA
  missing = is.na(col)
  
  # Determinar cuantos NAs tenemos sumando los TRUEs
  n.missing = sum(missing)
  
  # Todos los elementos que no son NAs
  col.obs = col[!missing] 
  
  values = col
  values[missing] = sample(col.obs, n.missing, replace = TRUE)
  
  return (values)
  
}

random.impute.data.frame = function(dataframe, cols) {
  names = names(dataframe)
  
  for (col in cols) {
    name = paste(names[col], "imputed", sep = ".")
    dataframe[name] = rand.impute(dataframe[,col])
  }
  dataframe
}
