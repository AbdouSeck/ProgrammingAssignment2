## This is to create the first function, makeCacheMatrix which creates a matrix, which is used to determine an inverse matrix

## This function will allow the user to
## set the value of the matrix
## get the value of the matrix
## set the inverse of the matrix
## get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) inv <<- solve
  getsolve <- function() inv
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## The following function calculates the inverse of the matrix created with the above function. 
## However, it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setsolve function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getsolve()
  if(!is.null(s)) {
    message("Returning the cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
}
