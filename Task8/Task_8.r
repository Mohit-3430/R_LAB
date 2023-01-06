
id <- c(222, 223, 224, 225, 226)
sal <- c(8000, 4500, 4564, 1234, 4445)
dept <- c("marketing", "sales", "management", "head", "librarian")
name <- c("AA", "BB", "CC", "DD", "EE")

df <- data.frame(name = name, empid = id, empsal = sal, department = dept)
print(df)

print((summary(df)))
