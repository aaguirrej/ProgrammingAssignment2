## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## [Put comments here that describe what your functions do]

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function(x) 
    setsolve <- function(solve) i <<- solve
  getsolve <- function(i) 
    matrix(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  i <- x$getsolve()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve (i)
  i
}

