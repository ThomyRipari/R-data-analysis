ozone.data = read.csv("../data/first-theme/ozone.csv", stringsAsFactors = F)

boxplot(ozone.data$pressure_height, main = "Pressure Height", boxwex = 0.5)

summary(ozone.data$pressure_height)

boxplot(pressure_height ~ Month, data = ozone.data, main = "Pressure Height Per Month")$out

impute_outliers = function(x, removeNAs = TRUE) {
  quantiles = quantile(x, c(0.05, 0.95), na.rm = removeNAs)
  
  x[x < quantiles[1]] = mean(x, na.rm = removeNAs)
  x[x > quantiles[2]] = median(x, na.rm = removeNAs)
  x
}

replace_outliers = function(x, removeNAs = TRUE) {
  quantiles = quantile(x, c(0.25, 0.75), na.rm = removeNAs)
  caps = quantile(x, c(0.05, 0.95), na.rm = removeNAs)
  iqr = quantiles[2] - quantiles[1]
  h = 1.5 * iqr
  x[x < quantiles[1] - h] = caps[1]
  x[x > quantiles[2] + h] = caps[2]  
  x
}

par(mfrow = c(1, 2))

boxplot(ozone.data$pressure_height, main = "Pressure Height with Outliers")
boxplot(replace_outliers(ozone.data$pressure_height), main = "Pressure Height without Outliers")

