n <- as.integer(readline(prompt = "Enter n:"))

naturalNumbersSum <- function(n){
    if(n == 1)
        return (1);
    return (n + naturalNumbersSum(n-1))
}

print(paste("Sum of first", n, "natural numbers are:", naturalNumbersSum(n)))