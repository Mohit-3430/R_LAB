n <- as.integer(readline(prompt="How many terms:"))

fibonacii <- function(n){
    if(n <= 1)
        return (n)

    return (fibonacii(n-1) + fibonacii(n-2))
}

print("Fibonacci series:")
for(i in 0:n){
    print(fibonacii(i));
}