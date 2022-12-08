path <- "E:\\Griet\\Academics\\sem_5\\R_LAB\\Task9\\credit.csv"
data <- read.csv(path)
print(dim(data))

mean <- mean(data$age)
sd <- sd(data$age)
tmin <- mean - (3 * sd)
tmax <- mean + (3 * sd)

outliers <- which(data$age < tmin | data$age > tmax)
print("The outliers in age are:")
print(outliers)
print(paste("Number of outliers:", length(outliers)))

no_outliers <- subset(data, data$age > tmin & data$age < tmax)
print(dim(no_outliers))
