## makeCacheMatrix function creates a matrix that can cache an input matrix and its inverse.
## cache
###############
## Creates a matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {

t <- NULL
  #
  set <- function(y){
    #
    x <<- y 
   t <<- NULL 
  }
  get <- function() x
  setinv <- function(inverse) t<<-inverse
  getinv <- function() t
  list (set=set, get=get, setinv=setinv, getinv=getinv)

}


## This is used to get the cache of the matrix from makeCacheMatrix function.
## This function computes the inverse of the matrix if it has not be calculated already.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Return a matrix that is the inverse of 'x'
  t <- x$getinv()
  if(!is.null(t)) {
    
    message("Retrieving the cached inversed matrix")
    return(t)
  }
  
    t <- solve(x$get())
    x$setinv(t)
    return(t)
}
