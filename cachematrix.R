## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# to calculate the inverse of a matrix
  solve(x)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  makeCacheMatrix <- function(x = matrix()) {
    # to calculate the inverse of a matrix
    solve(x)
    
  }
  #calculate again the inverse of x
  
    solve(makeCacheMatrix(x))

  
}
