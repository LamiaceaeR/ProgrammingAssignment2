#Here's a test matrix
M1 <- matrix(c(23,56,12,4,8,12,1,4,19), ncol = 3, nrow = 3)

#This function say if the matrix input can be solved
makeCacheMatrix <- function(x){
  d <- det(x)
  if(d!=0){
    print("its posible to inverse")
    } else{
      print("matrix must be square")
    }
  return(d)
  return(x)
}

#This function solve the matrix and show the solution
CacheSolve <- function(x){
  MInv <- solve(x)
  
  return(MInv)
}
