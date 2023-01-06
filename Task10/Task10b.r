# Defining sample vector
# rnorm -> normal distribution
x <- rnorm(100)
x
# One Sample T-Test
t.test(x, mu = 5)

y <- rnorm(100)

# Two Sample T-Test
t.test(x, y)


# Directional hypothesis testing
t.test(x, mu = 2, alternative = "greater")

# One Sample µ-Test
wilcox.test(x, exact = FALSE)


# Two sample test
wilcox.test(x, y)

# Using mtcars dataset in R
cor.test(mtcars$mpg, mtcars$hp)
