family.salary = c(30000, 20000, 60000, 100000, 30000)
family.size = c(2, 1, 3, 3, 2)
family.car = c("Normal", "Normal", "Deluxe", "Deluxe", "Normal")

family = data.frame(family.salary, family.size, family.car)

# Remove rows duplicated
family.unique = unique(family)

# Detect duplicated rows
duplicated(family)

# Get Duplicated Rows
family[duplicated(family), ]