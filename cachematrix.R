## The two functions will create a matrix, cache the matrix and solve the cached matrix

## This function creates a matrix that can cache its inverse

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


## This function will return an inversed matrix if it is done so already

cacheSolve <- function(x, ...) {
        t <- x$getinv()
  if(!is.null(t)) {
    
    message("Retrieving the cached inversed matrix")
    return(t)
  }
  
    t <- solve(x$get())
    x$setinv(t)
    return(t)
}
