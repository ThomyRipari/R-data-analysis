install.packages("caret")
library(caret)

data = read.csv("../data/second-theme/BostonHousing.csv")

training_ids = createDataPartition(data$MEDV, p = 0.8, list = F)

data_training = data[training_ids,]

data_validation = data[-training_ids,]

training_ids_2 = createDataPartition(data$MEDV, p = 0.7, list = F)

data_training_2 = data[training_ids_2,]

data_validation_2 = data[-training_ids_2,]


data_2 = read.csv("../data/second-theme/boston-housing-classification.csv")

training_ids_3 = createDataPartition(data$MEDV, p = 0.7, list = F)
data_training_3 = data_2[training_ids_3,]
data_validation_3 = data_2[-training_ids_3,]


partition_2 = function(dataframe, col, p) {
  library(caret)
  
  training_ids = createDataPartition(dataframe[,col], p = p, list = F)
  list(train = dataframe[training_ids,], val = dataframe[-training_ids,])
  
}

partition_3 = function(dataframe, col, p_train, p_val) {
  library(caret)
  
  training_ids = createDataPartition(dataframe[,col], p = p_train, list = F)
  data_training = data[training_ids,]
  
  temp = data[-training_ids,]
  
  validation_ids = createDataPartition(temp[,col], p = p_val, list = F)
  list(train = data_training, val = temp[validation_ids,], test = temp[-validation_ids,])
}

data_partition_2 = partition_2(data, 14, 0.8)
data_partition_3 = partition_3(data_2, 14, 0.7, 0.5)

# Muestra Aleatoria
sample_one = sample(data$CRIM, 80, replace = F)
sample_one
