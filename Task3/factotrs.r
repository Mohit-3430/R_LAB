n <- as.integer(readline(prompt = "Enter a number to find Factors:"))


print_facotrs <- function(n) {
  print(paste("The fators of", n, "are:"))
  for (i in 1:n) {
    if (n %% i == 0) {
      print(i)
    }
  }
}

print_facotrs(n)
