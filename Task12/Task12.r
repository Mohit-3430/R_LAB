path='E:\\Griet\\Academics\\sem_5\\R_LAB\\Task12\\Salary_Data.csv'
dataset = read.csv(path)

library(caTools)
split = sample.split(dataset$Salary, SplitRatio = 0.7)
trainingset = subset(dataset, split == TRUE)
testset = subset(dataset, split == FALSE)

# Fitting logistic Regression to the Training set
glm.r= glm(formula = Salary ~ YearsExperience,
         data = trainingset)
coef(glm.r)

# Predicting the Test set results
ypred = predict(glm.r, newdata = testset)

library(ggplot2)

# Visualising the Training set results
ggplot() + 
  geom_point(aes(x = trainingset$YearsExperience,
                y = trainingset$Salary), colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(glm.r, newdata = trainingset)), colour = 'blue') +
  
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')

# Visualising the Test set results
ggplot() +
  geom_point(aes(x = testset$YearsExperience, y = testset$Salary),
                colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience,
                y = predict(glm.r, newdata = trainingset)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')
