## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    sm <- NULL
    set <- function(y) {
        x <<- y
        sm <<- NULL
    }
    get <- function() x
    setmatrix <- function(solvedmatrix) sm <<- solvedmatrix
    getmatrix <- function() sm
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    print('1')
    m <- x$getmatrix()
    print('2')
    if(!is.null(m)) {
        message("getting cached data")
    } else {
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
    }
    m    
}
