path <- "E:\\Griet\\Academics\\sem_5\\R_LAB\\Task11\\Salary_Data.csv"
dataset <- read.csv(path)

dim(dataset)
head(dataset)

dataset$Salary
dataset$YearsExperience

# Training set and Test set
library(caTools)
split <- sample.split(dataset$Salary, SplitRatio = 0.7)
trainingset <- subset(dataset, split == TRUE)
dim(trainingset)
testset <- subset(dataset, split == FALSE)
dim(testset)

# Fitting Simple Linear Regression to the Training set
linear_model <- lm(formula = Salary ~ YearsExperience, data = trainingset)
coef(linear_model)

# Predicting the Test set results
ypred <- predict(linear_model, newdata = testset)
ypred

library(ggplot2)

# Visualising the Training set results
ggplot() +
  geom_point(aes(
    x = trainingset$YearsExperience,
    y = trainingset$Salary
  ), colour = "red") +
  geom_line(aes(
    x = trainingset$YearsExperience,
    y = predict(linear_model, newdata = trainingset)
  ), colour = "blue") +
  ggtitle("Salary vs Experience (Training set)") +
  xlab("Years of experience") +
  ylab("Salary")

# Visualising the Test set results
ggplot() +
  geom_point(aes(
    x = testset$YearsExperience,
    y = testset$Salary
  ), colour = "red") +
  geom_line(aes(
    x = testset$YearsExperience,
    y = predict(linear_model, newdata = testset)
  ), colour = "blue") +
  ggtitle("Salary vs Experience (Test set)") +
  xlab("Years of experience") +
  ylab("Salary")
