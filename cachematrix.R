## the goal of this assignement is to create the following functions
##"makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix

##makeCacheMatrix function makes the inversion of input possible because
##it has the ability to cache the input(a square matrix than can be inverted)
##in a special object matrix.

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y) {
    x <- y
    invrs <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invrs <- inverse
  getinverse <- function() invrs
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)


##as for the CacheSolve, it computes the matrix that
##is given from the ''makeCacheMatrix'' function. If the matrix has already been returned
##it will use the cache to retrieve the inverse if the matrix is not altered.

cacheSolve <- function(x, ...) {
  inv <= x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
}
