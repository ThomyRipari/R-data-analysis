library(mice)

housing.data = read.csv("../data/first-theme/housing-with-missing-value.csv", header = TRUE, stringsAsFactors = FALSE)

summary(housing.data)

columns = c("rad", "ptratio")

imputed_data = mice(housing.data[, names(housing.data) %in% columns],
                    m = 5,
                    maxit = 50,
                    method = "pmm",
                    seed = 2018
                    )

# pmm - Comparacion predictiva de medias

complete.data = mice::complete(imputed_data)

housing.data$rad = complete.data$rad
housing.data$ptratio = complete.data$ptratio

anyNA(housing.data)
