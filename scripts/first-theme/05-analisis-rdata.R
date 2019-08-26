clientes = c("Thomas", "Elian", "Pablo")
fechas = as.Date(c("2016-12-11", "2018-12-13", "2018-11-12"))
pagos = c(230, 145, 167.20)

pedidos = data.frame(clientes, fechas, pagos)

save(pedidos, file="../data/first-theme/pedidos.Rdata")
saveRDS(pedidos, file="../data/first-theme/pedidos.rds")

load("../data/first-theme/pedidos.Rdata")
orders = readRDS("../data/first-theme/pedidos.rds")

data(iris)
data(cars)
