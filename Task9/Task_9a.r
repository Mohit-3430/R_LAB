path <- "E:\\Griet\\Academics\\sem_5\\R_LAB\\Task9\\Salary_Data.csv"
data <- read.csv(path)
print(head(data))
print("Dimmesions of data:")
print(dim(data))
print("Summary:")
print(summary(data$Salary))
