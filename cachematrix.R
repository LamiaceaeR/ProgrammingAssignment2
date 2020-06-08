## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  InverseMatrix <- NULL
  set <- function(y){
    x <<- y
    InverseMatrix <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(solveInverseMatrix) InverseMatrix <<- solveInverseMatrix
  getInverseMatrix <- function() InverseMatrix
  list(set = set, get = get,
       setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}

## this function checks if the inverse is already calculated and retrives the inverse.
cacheSolveInverseMatrix <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  InverseMatrix <- x$getInverseMatrix()
  if(!is.null(InverseMatrix)){
    message("getting the data of the matrix")
    return(InverseMatrix)
  }
  Data <- x$get()
  InverseMatrix <- solve(Data, ...)
  x$setInverseMatrix(InverseMatrix)
  InverseMatrix
}
