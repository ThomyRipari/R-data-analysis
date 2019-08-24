install.packages("jsonlite")
library(jsonlite)

dat_1 = fromJSON("../data/first-theme/students.json")
dat_2 = fromJSON("../data/first-theme/student-courses.json")

head(dat_1, 3)
dat_1[1:7, c(2, 4)]
dat_1[c(2, 5, 8),]

dat_1$id
dat_1$Name
dat_1$Email