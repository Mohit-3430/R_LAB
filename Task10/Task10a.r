library(ggplot2)

data(iris)
head(iris)

# scatter plot
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_point()
# scatter plot and colors
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()
# scatter plot, colors and shapes
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species, shape=Species))+geom_point()
# simple trends and approximations using geom_smooth()
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point() +geom_smooth()
# whole trend
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))
+geom_point(color = "blue") + geom_smooth(color = "red")