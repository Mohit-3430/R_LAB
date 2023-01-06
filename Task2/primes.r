n <- as.integer(readline(prompt = "Enter a number:"))


# %% is modulus opearator in R
prime_f <- function(n) {
  if (n <= 1) {
    print("INVALID")
    return(NULL)
  }

  f <- TRUE
  for (i in 2:sqrt(n)) {
    if (n %% i == 0 && i != 2) {
      f <- FALSE
      break
    }
  }
  if (f) {
    print("prime")
  } else {
    print("Not Prime")
  }
}

prime_f(n)
