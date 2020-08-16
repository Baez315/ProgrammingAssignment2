## The first function, creates a list containing a function to
##set the value of the matrix
##get the value of the matrix
##set the inverse
##get the inverse



makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

##This function calculates the inverse matrix of a function created with 
##the above function. First checks to see if the inverse has already been 
##calculated. If so, it gets the inverse from the cache and skips the 
##computation.Otherwise, it calculates the inverse of the data and sets the value 
##of the inverse in the cache via the setIverse function.

cacheSolve <- function(x, ...) {
  
  i <- x$getInverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
  
}
