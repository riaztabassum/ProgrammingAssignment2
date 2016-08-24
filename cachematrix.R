## The purpose of these two functions is 1) to take a matrix and convert it into a special object (CacheMatrix) capable of caching
## the matrix's inverse; and 2) to compute a matrix's inverse, by calculating it directly, or by retrieving it from the cache, if
## the inverse has already been calculated during the session. 

## makeCacheMatrix takes a matrix as its argument and creates a matrix-like object capable of caching the given matrix (x) and
## its inverse.

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve takes as its argument a CacheMatrix, created using makeCacheMatrix. First it checks to see if the inverse of the
## CacheMatrix has been calculated before. If it has, cacheSolve returns the cached inverse with a message. If not, cacheSolve
## computes and returns the inverse of the CacheMatrix with no message.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
