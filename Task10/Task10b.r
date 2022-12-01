# Defining sample vector
# rnorm -> normal distribution
x <- rnorm(100)
x
# One Sample T-Test
t.test(x, mu = 5)

# Defining sample vector
x <- rnorm(100)
y <- rnorm(100)

# Two Sample T-Test
t.test(x, y)

# Defining sample vector
x <- rnorm(100)

# Directional hypothesis testing
t.test(x, mu = 2, alternative = 'greater')


# Define vector
x <- rnorm(100)

# one sample test
wilcox.test(x, exact = FALSE)

# Define vectors
x <- rnorm(100)
y <- rnorm(100)

# Two sample test
wilcox.test(x, y)

# Using mtcars dataset in R
cor.test(mtcars$mpg, mtcars$hp)
link2=https://www.geeksforgeeks.org/hypothesis-testing-in-r-programming/