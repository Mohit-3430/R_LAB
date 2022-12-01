n = as.integer(readline(prompt = "Enter a number:"))

f = 1

for(i in 2:sqrt(n)){
  if(n%%i==0 && i!=2){
    f=0
    break
  }
}

if(f==1){
  print("prime")
}else{
  print("Not Prime")
}