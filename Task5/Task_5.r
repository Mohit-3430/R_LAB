n <- floor(rnorm(10, 2, 5))
print("List of random numbers in normal distribution:")
print(n)

t <- table(n)
print("occurrences of each value:")

df <- setNames(data.frame(t), c("Value", "Occurances"))
print(df)

plot(n, type = "l")
