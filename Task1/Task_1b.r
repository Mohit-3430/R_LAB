print("Two vectors of different lengths:")
v1 =  c(1:9)
v2 =  c(10:18)
print(v1)
print(v2)
result = array(c(v1,v2),dim = c(3,3,2))
print("New array:")
print(result)
print("The element in the 3rd row and 3rd column of 1st matrix:")
print(result[3,3,1])