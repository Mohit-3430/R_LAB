library(ggplot2)

data(iris)
head(iris)

# scatter plot
ggplot(iris) +
    geom_point(aes(x = Sepal.Length, y = Petal.Length))
# scatter plot and colors
ggplot(iris) +
    geom_point(aes(x = Sepal.Length, y = Petal.Length, col = Species))
# scatter plot, colors and shapes
ggplot(iris) +
    geom_point(aes(x = Sepal.Length, y = Petal.Length, col = Species, shape = Species))
# simple trends and approximations using geom_smooth()
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
    geom_point() +
    geom_smooth()
# whole trend
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
    geom_point(color = "blue") +
    geom_smooth(color = "red")

## MT Cars
data(mtcars)
library(tidyverse)
print(head(mtcars))
# bar
ggplot(mtcars, aes(x = gear)) +
    geom_bar()
# bar flip
ggplot(mtcars, aes(x = gear)) +
    geom_bar() +
    coord_flip()

ggplot(mtcars, aes(x = hp, y = mpg)) +
    geom_point(color = "blue") +
    stat_summary(fun.y = "mean", geom = "line")

ggplot(mtcars, aes(x = hp, y = mpg)) +
    geom_point(color = "blue") +
    geom_rug(show.legend = FALSE) +
    stat_summary(fun.y = "mean", geom = "line", linetype = "dashed")

# Histogram
ggplot(mtcars, aes(x = mpg)) +
    geom_histogram()
# Box Plot
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) +
    geom_boxplot()
# Violin Plot
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
    geom_violin(aes(fill = cyl))
# Pie Chart
ggplot(mtcars, aes(x = "", y = mpg, fill = cyl)) +
    geom_bar(stat = "identity", width = 1) +
    coord_polar("y", start = 0)

mtcars %>%
    dplyr::group_by(cyl) %>%
    dplyr::summarize(mpg = median(mpg)) %>%
    ggplot(aes(x = cyl, y = mpg)) +
    geom_col(aes(fill = cyl), color = NA) +
    labs(x = "", y = "Median mpg") +
    coord_polar()
