data = read.csv("../data/second-theme/auto-mpg.csv", stringsAsFactors = F)

cars_list = split(data, data$cylinders)

cars_list[1]
cars_list[[1]][["car_name"]]

str(cars_list[[1]])
