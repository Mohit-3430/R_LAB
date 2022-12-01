n = as.integer(readline(prompt = "Enter a number to find Factors:"))


print_facotrs = function(n)
{
  print(paste("The fators of", n, "are:" ))
  
  for(i in 1:sqrt(n)){
    if(n %% i==0){
      if(n %/% i == i){
        print(i)
      }else {
        print(paste(i, ",", n/i))
      }
    }
    
  }
}


print_facotrs(n)