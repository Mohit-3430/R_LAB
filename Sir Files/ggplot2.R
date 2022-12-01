install.packages('ggplot2')
library(ggplot2)
data()
x<-iris
x
dim(x)
summary(x)
head(x)
#Scatter Plot
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_point()
#ggplot(iris, aes(x=x$Sepal.Length, y=x$Petal.Length))+geom_point()
#Scatter Plot with colors
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()
#Scatter Plot with colors,shapes
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species, shape=Species))+geom_point()
##Scatter Plot with colors,shapes smooth
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point() +geom_smooth()
##Scatter Plot with colors,shapes smooth
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point(color = "blue") + geom_smooth(color = "red")

#####Dataset Two
data(mtcars)
library (tidyverse)
glimpse (mtcars)
#bar
ggplot(mtcars, aes(x = gear)) +geom_bar()
#bar flip
ggplot(mtcars, aes(x = gear)) +geom_bar()+coord_flip()

ggplot(mtcars, aes(hp, mpg)) + geom_point(color = "blue")+ stat_summary(fun.y = "mean", geom = "line", linetype = "dashed")

ggplot(mtcars, aes(hp, mpg)) + geom_point(color = "blue") + geom_rug(show.legend = FALSE) +stat_summary(fun.y = "mean",geom = "line", linetype = "dashed")

#Histogram
ggplot(mtcars,aes(x=mpg)) + geom_histogram()
#Box Plot
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + geom_boxplot()
#Violin Plot
ggplot(mtcars, aes(factor(cyl), mpg))+ geom_violin(aes(fill = cyl))
#Pie Chart
ggplot(mtcars, aes(x="", y=mpg, fill=cyl)) + geom_bar(stat="identity", width=1) + coord_polar("y", start=0)

mtcars %>%
  dplyr::group_by(cyl) %>%
  dplyr::summarize(mpg = median(mpg)) %>%
  ggplot(aes(x = cyl, y = mpg)) + geom_col(aes(fill =cyl), color = NA) + labs(x = "", y = "Median mpg") + coord_polar()


link=https://www.analyticsvidhya.com/blog/2022/03/a-comprehensive-guide-on-ggplot2-in-r/

